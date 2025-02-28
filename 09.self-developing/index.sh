#!/bin/bash

echo "Упражение 1 - придумать предложения с выбранными 10 идеями (до разделителя ====================)"
echo ""
echo "Упражение 2 - использовать каждую идею трижды (после разделителя ====================)"
echo ""

echo What have you liked last time?
echo What have you disliked last time?
echo What have your friends liked last time?
echo What have your friends disliked last time?
echo ""
echo ""
echo ""
shuf -n 10 oldideas.txt
echo "======================================================================================"
cat newideas.txt
