SOURCE?='NONE'
VAR_DB = /var/db
AWK = awk
MAKEDB = makedb --quiet
OUTPUT?=$?

default: $(VAR_DB)/passwd.db $(VAR_DB)/group.db

$(VAR_DB)/passwd.db: $(SOURCE)
	@$(AWK) 'BEGIN { FS=":"; OFS=":"; cnt=0 } \
		 /^[ \t]*$$/ { next } \
		 /^[ \t]*#/ { next } \
		 { printf "0%u ", cnt++; print } \
		 /^[^#]/ { printf ".%s ", $$1; print; \
			   printf "=%s ", $$3; print }' $^ | \
	$(MAKEDB) -o $(OUTPUT) -

$(VAR_DB)/group.db: $(SOURCE)
	@$(AWK) 'BEGIN { FS=":"; OFS=":"; cnt=0 } \
		 /^[ \t]*$$/ { next } \
		 /^[ \t]*#/ { next } \
		 { printf "0%u ", cnt++; print } \
		 /^[^#]/ { printf ".%s ", $$1; print; \
			   printf "=%s ", $$3; print }' $^ | \
	$(MAKEDB) -o $(OUTPUT) -
