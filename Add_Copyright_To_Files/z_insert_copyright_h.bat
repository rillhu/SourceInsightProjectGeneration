for /r %%F in (*.h) DO (
    move "%%F" tmp.txt
    type copyright.txt > "%%F"
    type tmp.txt >> "%%F"
    del tmp.txt
)