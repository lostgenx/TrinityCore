@echo off
setlocal EnableDelayedExpansion
set WorldUpdates=All_World_Updates.sql
set CharactersUpdates=All_Characters_Updates.sql
set AuthUpdates=All_Auth_Updates.sql
set OldWorldUpdates=All_Old_World_Updates.sql
set OldAuthUpdates=All_Old_Auth_Updates.sql
set OldCharUpdates=All_Old_Char_Updates.sql
set LostUpdates=All_Lost_Core_Updates.sql

if exist %CharactersUpdates% del %CharactersUpdates%
if exist %AuthUpdates% del %AuthUpdates%
if exist %WorldUpdates% del %WorldUpdates%
if exist %LostUpdates% del %LostUpdates%

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
echo /* >>%OldWorldUpdates%
echo * %%a >>%OldWorldUpdates%
echo */ >>%OldWorldUpdates%
copy/b %OldWorldUpdates%+"%%a" %OldWorldUpdates%
echo. >>%OldWorldUpdates%
echo. >>%OldWorldUpdates%)

for %%a in (sql\old\3.3.5a\*2013*world*.sql) do (
echo /* >>%OldWorldUpdates%
echo * %%a >>%OldWorldUpdates%
echo */ >>%OldWorldUpdates%
copy/b %OldWorldUpdates%+"%%a" %OldWorldUpdates%
echo. >>%OldWorldUpdates%
echo. >>%OldWorldUpdates%)

for %%a in (sql\old\3.3.5a\*2012*auth*.sql) do (
echo /* >>%OldAuthUpdates%
echo * %%a >>%OldAuthUpdates%
echo */ >>%OldAuthUpdates%
copy/b %OldAuthUpdates%+"%%a" %OldAuthUpdates%
echo. >>%OldAuthUpdates%
echo. >>%OldAuthUpdates%)

for %%a in (sql\old\3.3.5a\*2013*auth*.sql) do (
echo /* >>%OldAuthUpdates%
echo * %%a >>%OldAuthUpdates%
echo */ >>%OldAuthUpdates%
copy/b %OldAuthUpdates%+"%%a" %OldAuthUpdates%
echo. >>%OldAuthUpdates%
echo. >>%OldAuthUpdates%)

for %%a in (sql\old\3.3.5a\*2012*characters*.sql) do (
echo /* >>%OldCharUpdates%
echo * %%a >>%OldCharUpdates%
echo */ >>%OldCharUpdates%
copy/b %OldCharUpdates%+"%%a" %OldCharUpdates%
echo. >>%OldCharUpdates%
echo. >>%OldCharUpdates%)

for %%a in (sql\old\3.3.5a\*2013*characters*.sql) do (
echo /* >>%OldCharUpdates%
echo * %%a >>%OldCharUpdates%
echo */ >>%OldCharUpdates%
copy/b %OldCharUpdates%+"%%a" %OldCharUpdates%
echo. >>%OldCharUpdates%
echo. >>%OldCharUpdates%)

for %%a in (sql\updates\LostCore\*.sql) do (
echo /* >>%LostUpdates%
echo * %%a >>%LostUpdates%
echo */ >>%LostUpdates%
copy/b %LostUpdates%+"%%a" %LostUpdates%
echo. >>%LostUpdates%
echo. >>%LostUpdates%)
