## SCREENS

An application has for screens to interact with a user. Think of them as 
routes that follows to controllers. The screens are:

1. Problem list.
2. Add a problem form.
3. Mofidy a problem form.
4. Authorization form.

## ROLES

There are two types of users: an anonymous user and an authorized user 
(administrator for our case).

An anonymous user should be able to do the following:

- Get all the problems.
- Sort problems by username, email.
- Filter problems using status column ("Problem is solved"/"Problem is NOT solved")

An administrator user should able to do the following:

- Modify the problem text
- Change the problem status

## Basic URIs

Let's define request's URIs for the stuff above. We follow Laravel naming 
conventions for routes.

1. [Problem list] -> /
2. [Add problem form] -> /create (GET), /store (POST)
3. [Mofidy problem form] -> /edit (GET), /update (POST)
4. [Authorization form] -> /login (GET), /authenticate (POST)

## ARCHITECTURE
(Fill it later)

## Features' implementation details
1. [Problem list] -> Sorting
   - Use cookies to store a column to sort and the sort order. For example 
   sortcol=email, sortorder=asc.
   - It will also work for multiple columns to sort (sortcol1=email, 
   sortorder1=asc, sortcol2=username, sortorder=desc).
   - PHP sessions and browser's local storage are not good candidates for 
   this.
   - [DB layer] We should build indexes for such columns in a real world application.
2. [Problem list] -> Pagination
   - Build an MVP using (modern) two buttons pagination: 'Older', 'Newer'. 
   It will also help to implement the infinite scroll on the frontend.
3. [Problem list (Administrator view)]
   - Add an extra column "ID" to the table. It should be a link. When a 
   superuser clicks a link, [modify problem form] appears.
<!--
   (Fill it later)
   - [DB layer] Cons
   In the case of a classic pagination we should send an 
   additional 'select count(id) from <tablename\>' query. It is not very 
   good for performance.
-->


## URI examples (not finished)
1. [Problem list]
   - /?col1=email&&sort1=asc
   - /?col1=nickname&&sort1=desc
   - /?page=2

## Controller routes examples
1. ProblemListController ([Problem list] -> Sorting feature)
   - /?sortcol=email or /?sortcol=username.
      1. PHP application reads cookies.
      2. If no information about the sort order exists we use the default 
      sort order and then set the appropriate cookie for it.
      3. If there is the same sortcol in a cookie, we just change the sort 
      order.












