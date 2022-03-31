function palin()
{
  num=$1
  rev=0
   while(($num>0))
   do
     rem=$(($num%10))
     rev=$(($rev*10+$rem))
     num=$(($num/10))
   done
   echo $rev
}
read -p "Enter 1st number to reverse=" user1
read -p "Enter 2nd number to reverse=" user2

reverse1=$(palin $user1)
reverse2=$(palin $user2)
if(($reverse1==$user1))
then
  echo "1st Number is palindrome "
else
  echo "1st Number is not palindrome"
fi

if(($reverse2==$user2))
then
  echo "2nd Number is palindrome"
else
  echo "2nd Number is not palindrome"
fi
