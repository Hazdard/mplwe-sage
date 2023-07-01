{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 71,
   "id": "fe3b7d45",
   "metadata": {},
   "outputs": [],
   "source": [
    "q=1337\n",
    "t=5\n",
    "d=2\n",
    "n=4"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 72,
   "id": "8d319c79",
   "metadata": {},
   "outputs": [],
   "source": [
    "Zq.<x>=PolynomialRing(Integers(q))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 353,
   "id": "ade80a80",
   "metadata": {},
   "outputs": [],
   "source": [
    "def shift(l1,i):\n",
    "    l2=[0 for k in range(i)]\n",
    "    for j in range(i,len(l1)):\n",
    "        l2.append(l1[j-i])\n",
    "    return l2"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 355,
   "id": "e2b651bf",
   "metadata": {},
   "outputs": [],
   "source": [
    "def Toep(p,k) :\n",
    "    coeffs=p.coefficients(sparse=false)+[0 for j in range(k-1)]\n",
    "    return [shift(coeffs,i) for i in range(k)]"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 356,
   "id": "8c4b5c06",
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "576*x^3 + 849*x^2 + 1304*x + 960"
      ]
     },
     "execution_count": 356,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "p1=Zq.random_element(3)\n",
    "p1"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 357,
   "id": "e23045a5",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "[[960, 1304, 849, 576, 0, 0], [0, 960, 1304, 849, 576, 0], [0, 0, 960, 1304, 849, 576]]\n"
     ]
    }
   ],
   "source": [
    "print(Toep(p1,3))"
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "SageMath 9.5",
   "language": "sage",
   "name": "sagemath"
  },
  "language_info": {
   "codemirror_mode": {
    "name": "ipython",
    "version": 3
   },
   "file_extension": ".py",
   "mimetype": "text/x-python",
   "name": "python",
   "nbconvert_exporter": "python",
   "pygments_lexer": "ipython3",
   "version": "3.10.6"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
