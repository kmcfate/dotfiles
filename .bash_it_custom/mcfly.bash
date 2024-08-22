#export MCFLY_FUZZY=2
export MCFLY_RESULTS=50
eval "$(mcfly init bash)"
eval 'PROMPT_COMMAND+=("history -a;history -c;history -r")'
