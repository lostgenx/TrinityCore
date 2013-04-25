@echo off
setlocal EnableDelayedExpansion
set WorldUpdates=All_World_Updates.sql
set CharactersUpdates=All_Characters_Updates.sql
set AuthUpdates=All_Auth_Updates.sql
set OldUpdates=All_Old_Updates.sql

if exist %CharactersUpdates% del %CharactersUpdates%
if exist %AuthUpdates% del %AuthUpdates%
if exist %WorldUpdates% del %WorldUpdates%

for %%a in (sql\updates\world\*.sql) do (
echo /* >>%WorldUpdates%
echo * %%a >>%WorldUpdates%
echo */ >>%WorldUpdates%
copy/b %WorldUpdates%+"%%a" %WorldUpdates%
echo. >>%WorldUpdates%
echo. >>%WorldUpdates%)


for %%a in (sql\updates\characters\*.sql) do (
echo /* >>%CharactersUpdates%
echo * %%a >>%CharactersUpdates%
echo */ >>%CharactersUpdates%
copy/b %CharactersUpdates%+"%%a" %CharactersUpdates%
echo. >>%CharactersUpdates%
echo. >>%CharactersUpdates%)


for %%a in (sql\updates\auth\*.sql) do (
echo /* >>%AuthUpdates%
echo * %%a >>%AuthUpdates%
echo */ >>%AuthUpdates%
copy/b %AuthUpdates%+"%%a" %AuthUpdates%
echo. >>%AuthUpdates%
echo. >>%AuthUpdates%)

for %%a in (sql\old\3.3.5a\*2012*world*.sql) do (
echo /* >>%OldUpdates%
echo * %%a >>%OldUpdates%
echo */ >>%OldUpdates%
copy/b %OldUpdates%+"%%a" %OldUpdates%
echo. >>%OldUpdates%
echo. >>%OldUpdates%)
