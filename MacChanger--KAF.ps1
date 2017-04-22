#MacChanger
#Owned By Karem Ali 
#Run it as Administrator 


# To Hide The PowerShell Window
$t = '[DllImport("user32.dll")] public static extern bool ShowWindow(int handle, int state);'
add-type -name win -member $t -namespace native
[native.win]::ShowWindow(([System.Diagnostics.Process]::GetCurrentProcess() | Get-Process).MainWindowHandle, 0)




[System.Reflection.Assembly]::LoadWithPartialName("system.windows.forms")
[System.Reflection.Assembly]::LoadWithPartialName("system.drawing")

#Creat The Main Form
$ICON_Base64 = "AAABAAEAAAAAAAAAGABCGwAAFgAAAIlQTkcNChoKAAAADUlIRFIAAAEAAAABAAgCAAAA0xA/MQAAAAZiS0dEAP8A/wD/oL2nkwAAAAlwSFlzAAAOxAAADsQBlSsOGwAAGuJJREFUeJzt3Xl8VOW9P/DP9zlzZkkyWcge1oSwyY6ABdxaWay2r3u9FhVtXXCp3t5e/NX7A7VVEJFNFNCftFX8qWivtSqtt7iB0OsNm61YRUG5l0UEQkhiSMKSzMw5z/f+cSYBcQgzZwKB5Pv+ByZ5nnO+ZzLfOc8551kAIYQQQgghhBBCCCGEEEIIIYQQQgghhBBCCCGEEEIIIYQQQgghhBBCCCGEEEIIIYQQQgghhBBCCCGEEEIIIYQQQgghhBBCCCGEEEIIIYQQQgghhBBCCCGEEEIIIYQQQgghhBBCCCGEEEIIIYQQQgghhBBCCCGEEEIIcU6jtg7gbDRy5IgPP9x04YVjPB4PgE8+2VxXV3fxxRc5v920aVM4HB41apTzcuPGDwzDGDFiuPOyrGxtMBgcMmQwANu2y8rW5ubm9u9/HoBIJFJWtrZLly69e/cCcPRow8aNG4uLi4uLewCor6v/cNOm3r17denSBUB1dfXmzZ8O6N8/Lz8PwP79FZ9//vmQIUM6dcoC8NVXe7Zv3z5ixPBgMAhg546dX+7ePXr0KL/fD2Dbtm379pVffPHFHsMA4dNPP6upqbnooguVUgA++ujvtbW1Z+q9FOegZS885/V631v1zob1ZRvWl40ZMzotLdX5//r1ZQMGDCgqKtqwrsz5Sbdu3fr27eP8f8P6sszMzAtGjnT+v2bNKp/PN2HCeOflO2+tAHDNxB85L//wyssAbrt1svPymad/A+AXv7jbeTl//lwAD898yHn5wK/uB/DEooXOy3/9+b8AeP65Z52XN910I4Dlr7+6YX3ZhnVlV131D0qp1e+9u35d2Yb1ZZdeeklqaur7/7nGKTzxR1cXFRW14dt7VpEzQAzLXnjuxptuKSwoIEUAvv66JhwOFxYWOL+trq62bZ2fn+e8rKysIqLc3BznZUXFAdM0s7M7AWDmiooDfr8/KysTgNa6ouJAampqRkY6AMuyKysrg8FgMJgGIBwOV1d/nZGRnpqaCqCxMVRTU5OVlRUI+AEcPdpQW1ubnZ3t83kBHD58pL6+Pjc3xzRNAPX1hw4fPpyfn2cYBoC62rojR48WFhYQEYCamoOhUKigIN95efmECXv37Vu5ctWZe0PFuWXZC8+1dQin0Q03TBo/flxbR3G2UG0dgBBtSRIghqqqqrYOQZwhkgAx3PNvU9s6BHGGGG0dgDjTbNs+UHFA7oSKkyrt2bOtQxCi7bTvu0DieHIN0OGM+s53BvTv39ZRnC0kATqckp7FnTvLk+AoSYCOiNs6gLOHJIDo0CQBYigrW9vWIYgzRBIghmeWPtvWIZxWJF0gRceVk5OTkZHR1lGIs9jlE8a3dQjiDJEmUAzXXz+prUMQZ4gkQIfzwx/+YMyY0W0dxdnC09YBiDMtPT0YDoXaOoqzhZwBOiJ5ENZMEkB0aJIAMbT35wAyFcIxkgAxtPmT4DFjxliWxd+itf72D0/w0UcfOdMZnYzWrFkaQeJspZRat25dzM/6KRNAaz127Ni2PgJxjrt7yr+24d6vu+46rbWLBNBar1ixog0jF+1EQiPC0ntdRB5fa+3a7/fv2rXLXQI0Njaed955cezC5/V6Wyvgc51cAyTLzO6Ze9EdrbW1u+++u3v37u7qLl26dOvWracsdvXV/3TppZe420X7IwmQNNI5l97uyy1OfksFBQXTpk0DQESUSJdNZq6pqZk5c2byMXQ0kgDJUgZl5uWWTHok+buL06dPd9dPk4jmzJlTWVmZZAAdkCRAsjymqQnB/t/LOv8HyWxn4MCBkydPBpDQdz8AZt6xY8eTTz6ZzN47LEmAGKbde1/8hTW0JjCh28SZ/jz3EwrNnz/fmerZhXvvvTck3XtckQSIYf/+ivgLM8DEAHuzCnvfuVS5uiM0YcKECRMmuKgIYO3atcuXL4+/fOWByoMHD7rbV/sjUyMmK614WMbAsQAR2MjIgRU+9D8bE9qCaZqvvfZaXl5ePNe+xxdgZtu2r7/++j179sS/u507d5WXlycUYTsmZ4AYfr3kqYTKk3P9SwSg+Kp7UooSawhNnjx5wIABCVWJ7pfolVde2bgxsXwTx5MEiCE1NcVFLWYmsJma2vvOhaB439jMzMwZM2a42B2Ao0eP3n///YnW6tatW35+vrs9tj+SAK2IwIBC9qDvFlx6bZx1pk2b5nwcXdz8Wbhw4VdffZVolBdfdOHgwYMSrdVeSQK0GiIQEUzFhNJbHjHTs09ZpXv37lOmTHG3u/3798+fP99dXZIO0U0kAVqN08PYYyhiZWbk9rz5kVNWmTt3rt/vd/HcF8CMGTPq6+tdxcksY8KaSALE4OaDxQATKTCzVgxQ4WXXZQ64sIUao0ePnjhxoovwiOjjjz9+/vnnXdQVJ5AEiOFffp54s4QYpMlQIAKYQCDV567HDa8/ZnGl1Pz5852VqxPFzFOnTo1EIi7qihNIAiSPAWZmAkyPR0dbF0yg1K79ek66J2adiRMnjh49Gq6ufd9+++1Vq9yv8vvpp1t27tzpuno7IwkQQ9euXRIqz0xggzWRYo6eABggZpRcc09qtz4nlPf7/XPmzHEXWyQSmTo1qTX8Nm/evH37jmS20J5IAsTwyKyH4y/MYJAGAILhMQA4H3/nP8rjHTBl8QkdRadMmdKjRw93sS1dunTLli3u6opvkwRIViDgNT0EZYO0YRBHHwc4w85J25w99JIuE37cXD4/P7+5039CO2LmgwcPJt/pf8Tw4f369k1yI+2GJEDSTMooygh4lWKyDYPgAWsAgGawZZMCet85y5uZ5xSfPn16Zmami/0Q0dy5cw8cOJBkvL379O7WrVuSG2k3JAGSpYlYIViQkZLuMZUGa60U2HC+4rVmgM3MnL4/nQ3QwAEDb731Vrj6+t+5c+cTTzzRGiHLc4BjJAGSxSAGRww7PTvg8yoidpo/xMRgEFgzMRWOn9Rp2CXz5s+TTv9nFZkcN4a//vVv8RdWzFrBoykUtgylfF6PFY7YHP2WZcC2QQpMuGX+/7/8ez3chbRu3brXX3/dXV3RAjkDxPD/nloSf2ECE7NhU2MjRzRFbG2aHtNgBScFSNsMkLKtfx7eGa4GvNu2PXXqVK11ogdyspClL1AzOQMkSxNMVkdDIU1sKNiaIpoNZZjEEUtrhm1rD9PYAipOd9P4cTr9b9iwobUCXr16TSQcbq2tnevkDBDD2LGXxV9YMdmWtm0mkGVpImbAZmZin9dQpFlzCls3lgbcBdPQ0OCi038LKioqvq6pacUNntMkAWK46Sc/PnWhJgQ0NobBRAzDMMh5FgxoJsvWfq/H0Hx1F9XJZ8DVzZ9Fixbt3r07sQMQcZMEiCGhe4SRiA2ONutty46OjgSYWQPhiC5MxT/2DABu5g2qqKiYN29ewtVadOWVV4wePap1t3nukmuA5BGgnC5xygATNB9biVezfWMfr89I7MIXzgBLohkzZtTV1bVuuJmZGdKTtJmcAZLGzf+QbTEzO9/0RARw36C+tIvPxZc/EX3yySfPPZfANL3CBTkDtAqn4w+BWBFpBoMJINv6af+AcrUwu3T6PzPkDBDDshdfSqR4U9dPBmxyJocggMEX5tGAHBOurn3feeedlStXJlQrTiRjgo8jCRDDe++tdlfR1lqp6EWwqSO3DUhxN2Nu8p3+W8BNvbUFpAnU+hgAa9b/1MNTmGoAbhpAzz777GeffdbqoTlefvllWSKsmZwBYrjrzp+6q8gEBoORYVjX90mJtn0SyQCn0/9DDz3kLoB4OKvMnL7tn1skAWIYNeo7LmoxNXV/0/ZPennTTDfvbWt1+m+Bx+MxDJkTNkoSoJVprbsH7CuKA3B17btr167FixefntCirr124mWXfe+07uIcIgmQPGemKSYGQGD7tv5+j3J5m+W+++6TTv9nkiRA0o77qDPzoKB1QYH/xF+cCoOZef369a+++morhydaJHeBkkdwBkaCTTtyx+AgEm/8gGFrfd/0ma3X6V/ERc4AMfzylw/EX1hBeUgp1sT25d08pVkul+Bd/uc3Pz/s9WV3dldduCMJEMOevXvjL2xblra01+MJsn3LwGCiN/6dxk9jY2jmomeCvYaX/GRG/GsLuFNdVd3qHezOXdIESp4KRzgSCd04KJAdUECCKcAA8NTS57+m9LySIem9hhWNu6l85WnsA/fuSvfTKrY/cgaIYdHCx+MvzCAmI9vkq/u67PhwoLLqiZeWp5UOSyksMXwpJTc84MsqdLEd4YIkQAydOmUlUpzZtu4cluLzKLi4/AVmL3zK7tQ9tWSgJyOHlPKkZZXcPCv5ZbdPpqioKCcn5zRt/JwjCZA05vOy9GUlLof8bvn8i1dWrc8oHZqW212ZPk1KQ+WNuSp72LjWDbPZd797yfnDhp6mjZ9zJAGSRax/dn6qkfh9T6dDzgPzFqcVD8zoOdhISzcICqygQVR6+6OGz81affHtXERJAiRrdBfv4AI/Emz8OB/BVX95f90Xe9J6DvZ1KkpNDQa8PlNBsSZwIK9b92tOV49o0UwSIIZQKIFpc4oyTFdfqRyJRKYvWJJWOjTQtZ8nJT1i67BtKcPw+r0B0zTA3a/8aVrxwMS3LBIgCRDD7Xck0B3aUAl3+ncaPy++8tqXh3VG6VB/ViF7PJpIgyxbRyxt2bbXNP2paQPuepyM1r9VLePBmkkCJMswDCJKdNxLXX39gmd/l97r/EBRLxVIJQJYU3RlAdZEIVuHLA72Htl5/OTWDfiLz7d9KRMNNZEEiCE3Nzf+wu761j/+66UNwfz0ksG+jByljs2ZRUQgpQEQE9gG9bp5hi+7NR8LbProo23b/rsVN3hOkwSI4bEFCSxAndBKj8xg5t179j77x3cy+w4PFBYrbwDfGDZGBChnWl3FKSYCaRn97nC5ILY4JUmAZCV4BmAADy1Y7OvaL710kBnsRMY3/gTMGmAweT2Gz+sNs4poI+c7P8wefnlrBTxkyJDevXq11tbOdZIAyYr/DOBMl77xw01vf7g1o+/5/rxuZPqYiZk5OqiGiaAIPp8JUmFbayJSrBklk+cZ/tRWCbh//37FxT1aZVPtgCRAshI4AzC01jMWPJnWc1BacX8jLR0qOkMPgQlMgGkaPq/H0toCa+eiANqyI778Lt2vbbXHAvIgrJkkQLISagItX/HWJ/vqOvUZ5s8tgmEeN0UPexQCPhOsQjY0AezMOWprtjUITEVX3pleMvi0HEMHJgkQw+bNm+MvHH8TKBQKPbzomWDJMH9+b29KhgHn7imD4PV5yesNabadEwGj6TdkWxYYgFaGp++dj7XKYwF5DtBMEiCGBY8tjL9wnGcAZn7y17+tovTUnkORloMIDCID7FEq4PdqZltrHX0OQEQUXWgYZFtMABExI610WNGEW1wd0wkkBaIkAZIVZwIcOHBg9swZnmBGSlEPwxcIh8II2wG/4fEYYUvbDAaIQdz0J3GuDrRmMJPz8JgtrUuv/1WSwybff7/s7x9/nMwW2hNJgBguuujC+AufsgnEzMw8c9YjtbW1NX97N5CW5TO8iryRBm3ZbDnTqTsPk6OPk4/N22Zpm8n5NTkTb5mp6b0mz3Z1WFF79+6trKxMZgvtiSRADHfcdmv8heM5A2z5YtuLf/gjgKP7d+x775XGozp0xAqHybJZM2lnMmkAiN4MIiaADEVh29bN92wYTGDNuRdcmTPi+wkflYhFEiCGhO4StpgA0Vk4p89dTCmdnB/tfG1u+NBBQLGhQ5ZtKigG+Jt/COfrXmvnXhAd9+OI1oYySifP8aQEEwnzmAnjx11wwUh3ddsfSYBktdAEcpoy7/3lv97fsttsGuYbqa/+6k+PMkBEWjN/cyIgAoijGWjZdtNiA0C0lQQCmODP7dr9mmnuAs7JzcnIyHBXt/2RBEhWC2cAIopYkQcffSqteJg3q6D55+Urlzbs3wZSILJsrQDgWBowGMyGoohlE9HxMzk7HUWd5cO6XH5bsOeQ03JIHYkkQLJaSABmXvbyazvrOL1kiCcl89jP7fCulx8EaQYsyyZFaOoo4SCAbWca8xObYwy2bK0UkcfsdcdjpGRim6RIAsTwyh8SmKDzZE0gZq6vr5//2xeDPYcFCnspr+/431Z/9G7V31eDCYBt204GRBGBwJoZzu2fb9yzP37sQbDnkM7fvy3+UMW3SQLE8Oabb8VfuIUzwONLlh7y5aX1GGSm5574Vc16x7IH2bYYZFkWKTrub8FEZEesk40ydiaTIwIYPa6d5s/tGn+04gSSAMmKeQZg5q/27H361bfTS4b580sMb4xJU458+VnF6mVMsDSIWUFHHwMzFNth6JM9rWUiW2ulDBA8KcHSW2YnNB7t1VdfX7PmL/GXb98kAWK4PbnnAE7Dfcb8xUZBn9TuA820TnSSZtLu38+2jtSDYNt29GYPMRi2ZoC+fQGAY0UAMDEzKHvE93NGXhl/wOFw2LKs+Mu3b5IAMST0JPiEBHA+tR98uOnN9Z8FS4b5crsp03eSqojUVX/12gIAEctW0f4/bBhkWXaLy3iRJmhmw2kGEZXeMtsIxPtYQKmEl61vxyQBkvXtJpDW+oF5Twa6D0zr2s8TyECLQ+bL33qmsXwnM2utnYcAYLa1RksTDTHgtIIUgYjJn9O5eNIv4wx40qRJ48adrmnnzjmSAMk6sQlE+OOKtz/eUxssGert1NnwmC1/2+pI466XZoCUFbGcNYZt2+YWe2uykyVNy3I7o8mKxt+c3uv8eAJ2OlwLhyRAso47AzCAUGNo1qKn03sOS+ncx/CngU79eav+YEXtp2V2tOMDaVszM4iiwyRjVSEGiDTYaNq7Mjy9bn+UDPOUAfM3nzl0cJIAyWo+Azgf1SXPLtuPlIzeg30ZeaRMTXTqhdmZdzz/K82wbNsEh7U22FDH+gF9u7ozkIYtWxuKVLSfKKX3GNT5ijta+/jaOUmAGGY+PCv+ws0JQITKqqrFL74WLB3mLSj2ZaQRaWKOp8VxZNfmA6tf4ohFGoaGrWyt2IiOmDyxenPfIDRlHTtZQuhxzVR5LJAQSYAYtm/fEX9hpwnkTPY8Z/GSSGbX1OKBnvRsi7QZMJxxjfG8z1/+fo6uP1RfVU8hMtkwNGmwMzySY/WJAACCBqPprg6DjEBq75vntbzIUm1t3eHDh+M/wPZNEiBZ0TMAY+sX215+d22wdKg/rzu8fk2wOGL6PACD7VNuJ3ywYvurjx2pCzfUhhuqI0bE42GDmAF2Jo+IkQGMCGvVtCYxAwpI7zMuc+AVLezozTffWr9+g5tDbY8kAWKYNzeBIVeGYTTN9L/I2+W8lO79zbRMImLAZrbIMrxobqS0bN+qp49W7WGbIhHUVTdEDkZMy2PCMDQUmkcJc9MJgaMXw8eGkBFYWWFV9A+zjEB64sfdEUkCxFBYmMBcnE4T6L33/+v9rbvTSof4cjqTx+tM9sNEGhaU9pgGxTEOnSON5W/NjeiIQUSkGkKor2oM19qGbRgcbfs3XRRQdNQwkdasVPRamZgiYduTWVD4/ftOtpe8vLysrITWgGrPJAGSZRhGxLIeXLAk2HNIatd+npR05/LUufejmSJaa0MrT1w33+s+eat2+wYFrdm5xqXGBruuqjFyCF6bPEzEClDUNJ0WmCOwDQPRcZRaR2xNQPaoG1O6xX4sMG7c2JEjRrTS0Z/zJAGSpZTx7398c0e9ndZziNkpX3lM54uZqWk6E5DNLXdtOB7v/49ZkXDIIKZo1zgQjIbDdl2lpRvIZBhsA8zOJBIEQJEmZ+4IO6QVE4NIGcXXzSMj5qrdLM8BmkkCJOtoKLz49dVppUNTinoZvjRumtCEmposzo0cTfoUG2rSsOeTyg/+oEjDyaBorziCbRypC9dVNaLB8GrTYA1oYiImWxMZREAkrJiUYu01KaPHgPGTbj99B94+SALEYNunvmnT7Ok/rTmSWhgsHmRm5JBhfLupf7KnuS2oeOcx68hB9Y1hMgxlgxVb3iM11qHqRg7Dx8oAM+kIWYYiYlghDbZ9pkmkU314bvHs4uLiBHfesUivkGR5M/MC+T2MlKDypXxzpv/j8dG9/310zxfxbza1xzB/p67OsLDjBwU3TxrHBNM0SBErZrABYo1Iow0GGYq1zgpgWGff1q1bt27devyWb7jh+uqq6ndXrnR1uEKc40YMH96vb9+2jkKcxdLT5Sa66MCWvfBcW4cgzhC5CI6hfV8YDRgwoKREroyjJAFiaN83yQcPHtirtLStozhbSAJ0RO07wxMiCSA6NEmAGLZt29bWIZxGCa9q365JAsTwyOy5bR3C6SYpEJXQIs+iPag/VF9eXi6DwsRJjRwpvYVFByYPwjoOuQbocC773neHnx/XFFodgSyv0OEUFBYYHvm7R8kZQHRokgCiQ5MEiOGNN/7c1iGIM0QSIIbXly9v6xBOL3kMJjqulJSA33fSNTuEwI0/+XFbhyDOEGkCxTB27GVtHYI4Q+R+cAydOxf98Ac/+POKFY/On5uTkw3ghRdeKlu79onFC1NSAgCeWvKbTz/97KmnnnDWp5g3/7GKioqFjy9wpkJ/cPpDWvOsh2cAAOj//OKewoLCqVPvARCORO6++57+/c/72T/fBXAoFL7zrp9desklN930YwBff13zb/932pVXXvGjq68C6Msvdz808+HrrrtmwvjxAG/ZsnXBYwtvu3XymDGjAf7gr3/7zW+enjLl50MGDwKwZs1/vvjS7355/72lpT0B/OmNP7/xxn/MnTM7Pz8P4N/9++9Xr16zeNHjwWBaZmbmkl//dtWq99ro3T27SALEsG79hkOHDgGoOFAZCocBHDl6hJn376/wB/wENDQ0sNbl5fudiUHD4ZDWet++cgAgRCIWa72vfD+c+axsHQqH9pXvB2BFLGZuaGjcV14OINK0cee3tbV1AA4dOuS8rKqqAlBfd8gpXP11DYCDtbXOy4MHawHU1NRE69bVAaiq/jqQkuJsBEBlZaVtWwwcOXwEQEXFgfpDh/aV76+srDyjb6gQQgghhBBCCCGEEEIIIYQQQgghhBBCCCGEEEIIIYQQQgghhBBCCCGEEEIIIYQQQgghhBBCCCGEEEIIIYQQQgghhBBCCCGEEEIIIYQQQgghhBBCCCGEEEIIIYQQQgghhBBCCCGEEEIIIc4K/ws5GArq5JRJlAAAAABJRU5ErkJggg=="
$ICON_Bytes = [System.Convert]::FromBase64String($ICON_Base64)
[System.IO.File]::WriteAllBytes("C:\Users\$env:username\Karem.ico",$ICON_Bytes)
$Main_form = New-Object System.Windows.Forms.Form
$Main_form.Width = 500
$Main_form.Height = 500
$Main_form.Text = "Mac Changer --KAF"
$icon = New-Object System.Drawing.icon ("C:\Users\$env:username\Karem.ico")
$Main_form.Icon = $icon

#Creat The Tap Control
$Tab_control = New-Object System.Windows.Forms.TabControl
$Tab_control.Width = $Main_form.Width
$Tab_control.Height = $Main_form.Height
$Main_form.Controls.Add($Tab_control)

#Creat Mac Changing Tab
$Mac_change_tab = New-Object System.Windows.Forms.TabPage
$Mac_change_tab.Text = "Mac Changer"
$Mac_change_tab.Width = $Main_form.Width
$Mac_change_tab.Height = $Main_form.Height
$Tab_control.Controls.Add($Mac_change_tab)

#Creat DB Tab
$DB_tab = New-Object System.Windows.Forms.TabPage
$DB_tab.Width = $Main_form.Width
$DB_tab.Height = $Main_form.Height
$DB_tab.Text = "DB Mac"
$Tab_control.Controls.Add($DB_tab) 

$Adapters = Get-WmiObject win32_networkadapterconfiguration | where{$_.macaddress -like "*:*"} | select macaddress,description,settingid
$i = 1

[System.GC]::Collect()
#Creat a Label for The Combo List 
$label_combo = New-Object System.Windows.Forms.Label
$label_combo.Width = 120
$label_combo.Height = 40
$label_combo.top = 40
$label_combo.Padding = 7
$label_combo.Text = "Network Adapters "
$Mac_change_tab.Controls.Add($label_combo)

# Creat The Combo List
$como = New-Object System.Windows.Forms.ComboBox
$como.Width = 300
$como.Left = 120
$como.top = 65
$Mac_change_tab.Controls.Add($como)

# Function Which adds The Elements to The list 

function creat_combolist(){
 $como.Items.Add($Adapter.description)
}
[System.GC]::Collect()
#The Loops adds Elements to The List

foreach ( $Adapter in $Adapters)
{
    creat_combolist
        
}

#Creat The label for Display Mac
$Mac_label = New-Object System.Windows.Forms.Label
$Mac_label.Width = 100
$Mac_label.Height = 20
$Mac_label.Text = "MAC Address"
$Mac_label.top = 150
$Mac_label.Left = 15
$Mac_change_tab.Controls.Add($Mac_label)

#creat Text Box for Mac
$mac_textbox = New-Object System.Windows.Forms.TextBox
$mac_textbox.Width = 200
$mac_textbox.top = 150
$mac_textbox.Left = 125
$mac_textbox.ReadOnly = $true
$Mac_change_tab.Controls.Add($mac_textbox)
[System.GC]::Collect()
#Creat a Label for status
$statu = New-Object System.Windows.Forms.Label
$statu.Width = 100
$statu.top = 180
$statu.Left = 15
$statu.Text = "Statue"
$Mac_change_tab.Controls.Add($statu)

#creat The text box for The statu
$statu_textbox = New-Object System.Windows.Forms.TextBox
$statu_textbox.Width = 100
$statu_textbox.top = 180
$statu_textbox.Left = 125
$statu_textbox.ReadOnly =$true
$Mac_change_tab.Controls.Add($statu_textbox)

#Creat a Label for ip
$ip = New-Object System.Windows.Forms.Label
$ip.Width = 100
$ip.top = 210
$ip.Left = 15
$ip.Text = "IP Address"
$Mac_change_tab.Controls.Add($ip)

#creat The text box for The ip
$ip_textbox = New-Object System.Windows.Forms.TextBox
$ip_textbox.Width = 200
$ip_textbox.top = 210
$ip_textbox.Left = 125
$ip_textbox.ReadOnly = $true
$Mac_change_tab.Controls.Add($ip_textbox)
[System.GC]::Collect()
# Get The Value of The Selected Item in The ComoboList
$como.add_SelectedValueChanged({

        $label_combo.Text = $como.Text
        $Adapter = Get-WmiObject -Class win32_networkadapterconfiguration | where{$_.description -like $como.Text} | select macaddress,ipaddress,index
        $mac_textbox.Text = $Adapter.macaddress -replace ":",""
            if ( $Adapter.ipaddress)
                {
                        $statu_textbox.Text = "Active"
                        $ip_textbox.Text = $Adapter.ipaddress.split(" ")[0]

                }
                else{
        
                        $statu_textbox.Text = "NOtActive"
                        $ip_textbox.Text = "Null"
                }

})
[System.GC]::Collect()
#Creat a Label for New Mac
$new_mac = New-Object System.Windows.Forms.Label
$new_mac.Width = 100
$new_mac.top = 240
$new_mac.Left = 15
$new_mac.Text = "New Mac"
$Mac_change_tab.Controls.Add($new_mac)

#creat The text box for The New Mac
$new_mac_textbox = New-Object System.Windows.Forms.TextBox
$new_mac_textbox.Width = 200
$new_mac_textbox.top = 240
$new_mac_textbox.Left = 125
$new_mac_textbox.MaxLength = 12
$Mac_change_tab.Controls.Add($new_mac_textbox)


# Creat a Button to submit THe new Mac 
$new_mac_button = New-Object System.Windows.Forms.Button
$new_mac_button.Width = 50
$new_mac_button.top = 240
$new_mac_button.Left = 330
$new_mac_button.Text = "Submit"
$Mac_change_tab.Controls.Add($new_mac_button)


#Change Mac Function

function apply(){

   $Adapter = Get-WmiObject -Class win32_networkadapterconfiguration | where{$_.description -like $como.Text} | select macaddress,ipaddress,index,description
   $index ="{0:D4}" -f $Adapter.index 
   $path = 'HKLM:\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\' + $index.ToString()
   set-ItemProperty -Path $path -Name "NetworkAddress" -Value $new_mac_textbox.Text
   $interface = Get-NetAdapter | where{$_.interfacedescription -like $Adapter.description}
   Restart-NetAdapter -Name $interface.Name

}
# Change The Mac To The New one 
$new_mac_button.Add_Click({
   apply
})

# Creat a Button to Random THe new Mac 
$random_mac_button = New-Object System.Windows.Forms.Button
$random_mac_button.Width = 60
$random_mac_button.top = 270
$random_mac_button.Left = 125
$random_mac_button.Text = "Random"
$Mac_change_tab.Controls.Add($random_mac_button)
[System.GC]::Collect()
function random(){
     $B = Get-Date
     $C = $B.Hour + $B.Second + $B.Millisecond + $B.Minute
     $A = Get-Random -SetSeed $C -Minimum 60000000000000 -Maximum 99999999999999
     $A
     return 
}
$random_mac_button.Add_click({
     $A = random
     $random_mac = "{0:X12}" -f [System.Convert]::ToString($A,16).ToUpper()
     $new_mac_textbox.Text = $random_mac
})

[System.GC]::Collect()
#Creat a label for Startup options
$startup_label = New-Object System.Windows.Forms.Label
$startup_label.Text = " Your Mac Address on StartUp"
$startup_label.Width = 200
$startup_label.Height = 20
$startup_label.top = 300
$startup_label.Left = 10
$font_startup_label = New-Object System.Drawing.Font ( [System.Drawing.FontFamily]::GenericSerif ,9 , [ System.Drawing.FontStyle]::Bold)
$startup_label.Font = $font_startup_label
$DB_tab.Controls.Add($startup_label)

#Creat Radio Buttons For Options

$options = @("Random" ,"last Mac","Real Mac")
$e = 0

#Creat The Groub Which Will Contain The Check boxes , So if you Creat other RadioButtons  outside The groub you can choose it , Because  you can Check only 1 Radio Button
$group = New-Object System.Windows.Forms.GroupBox
$group.top = 320
$group.Width = $Main_form.Width
$group.Height = 20

$creat = foreach ( $option in $options){
     $radiobutton = New-Object System.Windows.Forms.RadioButton
     $radiobutton.text = $option
     $radiobutton.Width = 70
     $radiobutton.Height = 20
     $radiobutton.top = 0
     $radiobutton.Left = 30 +( $e * 75)
     $radiobutton.TabIndex = 3
     $group.Controls.Add($radiobutton)
     $DB_tab.Controls.Add($group)
     echo $creat
     $e += 1
     $radiobutton
}


[System.GC]::Collect()
#Creat timer randmon mac checkbox
$timer_checkbox = New-Object System.Windows.Forms.CheckBox
$timer_checkbox.text = "Random Mac Address After a Delay"
$timer_checkbox.Width = 250
$timer_checkbox.Height = 20
$timer_checkbox.top = 310
$timer_checkbox.Left = 10
$Mac_change_tab.Controls.Add($timer_checkbox)

        #Creat Text Boxes and Labels for Delay

        $delay_labels = @("Hour" , "Min" , "Sec")
        $r = 0
        $creat_delay_label = foreach($delay in $delay_labels){
         $delay_label = New-Object System.Windows.Forms.Label
         $delay_label.text = $delay
         $delay_label.Width = 30
         $delay_label.Height = 20
         $delay_label.top = 335
         $delay_label.Left = 10 +( $r * 75)
         $delay_label.TabIndex = 3
         $Mac_change_tab.Controls.Add($delay_label)
          $r++
          $delay_label
        }

   [System.GC]::Collect()
        #Creat num
        $t = 0
         $creat_delay_updown =  foreach($delay in $delay_labels){

                 $delay_updown = New-Object System.Windows.Forms.TextBox
                 $delay_updown.Width = 40
                 $delay_updown.Height = 20
                 $delay_updown.top = 335
                 $delay_updown.Left = 40 +( $t * 75)
                 $delay_updown.TabIndex = 3
                 $Mac_change_tab.Controls.Add($delay_updown)
                 $t++
                 $delay_updown
        }

    
        #Creat Submit Button for Delay
        $Delay_submit = New-Object System.Windows.Forms.Button
        $Delay_submit.Width = 50
        $Delay_submit.Height = 20
        $Delay_submit.Text = "Submit"
        $Delay_submit.top = 335
        $Delay_submit.Left = 250
        $Mac_change_tab.Controls.Add($Delay_submit)

        $Delay_submit.add_click({
         while(1){
          if ( $creat_delay_updown[0].text)
                        {}
                        else{ $creat_delay_updown[0].text ="0"}
                         if ( $creat_delay_updown[1].text)
                        {}
                        else{ $creat_delay_updown[1].text ="0"}
                      [int]$Delay_period = ([System.Convert]::ToInt32($creat_delay_updown[0].text,10) * 3600) + ([System.Convert]::ToInt32($creat_delay_updown[1].text,10) * 60) + ([System.Convert]::ToInt32($creat_delay_updown[2].text,10) * 1)
           
                       random
                       $A = random
                       $random_mac = "{0:X12}" -f [System.Convert]::ToString($A,16).ToUpper()
                       $Delay_submit.Enabled = $false
                       $new_mac_textbox.Text = $random_mac
                       Start-Sleep -Seconds $Delay_period
                            if($timer_checkbox.Checked){
                                    apply
                                }
                        $Delay_submit.Enabled = $true
            }
       })

       
        [System.GC]::Collect()

        #Creat The DB Section 

        #Creat NIC  Name Label 

        $NIC_label  = New-Object System.Windows.Forms.Label
        $NIC_label.width = 170
        $NIC_label.Height = 20
        $NIC_label.top = 20
        $NIC_label.Left = 20 
        $NIC_label.Text = "Enter The Name of The NIC"
        $DB_tab.Controls.Add($NIC_label)
        

        #Creat The NIC TextBox

        $NIC_textbox = New-Object System.Windows.Forms.TextBox
        $NIC_textbox.Width = 300
        $NIC_textbox.Height = 20
        $NIC_textbox.top = 50
        $NIC_textbox.left = 20
        $NIC_textbox.AutoCompleteSource = 'CustomSource'
        $NIC_textbox.AutoCompleteMode = 'SuggestAppend'
        #$NIC_textbox.AutoCompleteCustomSource = $autocomplete
        
        $download_form = New-Object System.Windows.Forms.Form
        $download_form.Width = 300
        $download_form.Height = 90
        $download_progress = New-Object System.Windows.Forms.Label
        $download_progress.Text = "Downloading Database in Progress... it's 4MB"
        $download_progress.Left = 20
        $download_progress.Width = 300
        $download_progress.Height=20
        $download_progress.ForeColor = "red"
        $download_progress.Font = New-Object System.Drawing.Font ([System.Drawing.FontFamily]::GenericSerif,"10",[System.Drawing.FontStyle]::Bold)
        $download_form.Controls.Add($download_progress)
        $download_form.Icon = $icon
        $download_form.Show()
        Start-Sleep -Seconds 1
        

	    $Downloader= new-object System.Net.WebClient
        $url = "http://stor9155.uppcdn.com/dl/lnogwexsyhsfv63mxue4v4x5wjgjc5fmpxaojh7byjtztouvqup65jz3/OUI 21-4.txt"
        $path = "c:\users\$env:username\OUI 21-4.txt"
        if(Test-Path $path){}
        else{
        $Downloader.DownloadFile($url,$path)
        }
        if( Test-Path $path)
        {
        Get-content "c:\users\$env:username\OUI 21-4.txt" | % {$NIC_textbox.AutoCompleteCustomSource.AddRange($_) }
        }
        else{

        "E0-43-DB   (hex)		Shenzhen ViewAt Technology Co.,Ltd. ","E043DB     (base 16)		Shenzhen ViewAt Technology Co.,Ltd. ","24-05-F5   (hex)		Integrated Device Technology (Malaysia) Sdn. Bhd.","2405F5     (base 16)		Integrated Device Technology (Malaysia) Sdn. Bhd.","2C-30-33   (hex)		NETGEAR","2C3033     (base 16)		NETGEAR","3C-D9-2B   (hex)		Hewlett Packard","3CD92B     (base 16)		Hewlett Packard","9C-8E-99   (hex)		Hewlett Packard","9C8E99     (base 16)		Hewlett Packard","B4-99-BA   (hex)		Hewlett Packard","B499BA     (base 16)		Hewlett Packard","1C-C1-DE   (hex)		Hewlett Packard","1CC1DE     (base 16)		Hewlett Packard","3C-35-56   (hex)		Cognitec Systems GmbH","3C3556     (base 16)		Cognitec Systems GmbH","00-50-BA   (hex)		D-Link Corporation","0050BA     (base 16)		D-Link Corporation","00-17-9A   (hex)		D-Link Corporation","00179A     (base 16)		D-Link Corporation","1C-BD-B9   (hex)		D-Link International","1CBDB9     (base 16)		D-Link International","90-94-E4   (hex)		D-Link International","9094E4     (base 16)		D-Link International","28-10-7B   (hex)		D-Link International","28107B     (base 16)		D-Link International","1C-7E-E5   (hex)		D-Link International","1C7EE5     (base 16)		D-Link International","C4-A8-1D   (hex)		D-Link International","C4A81D     (base 16)		D-Link International","18-62-2C   (hex)		Sagemcom Broadband SAS","18622C     (base 16)		Sagemcom Broadband SAS","7C-03-D8   (hex)		Sagemcom Broadband SAS","7C03D8     (base 16)		Sagemcom Broadband SAS","E8-F1-B0   (hex)		Sagemcom Broadband SAS","E8F1B0     (base 16)		Sagemcom Broadband SAS","00-F8-71   (hex)		DGS Denmark A/S","00F871     (base 16)		DGS Denmark A/S","20-BB-76   (hex)		COL GIOVANNI PAOLO SpA","20BB76     (base 16)		COL GIOVANNI PAOLO SpA","2C-22-8B   (hex)		CTR SRL","2C228B     (base 16)		CTR SRL","Cant??  Cant?? (CO)  22063","34-8A-AE   (hex)		Sagemcom Broadband SAS","348AAE     (base 16)		Sagemcom Broadband SAS","BC-EC-23   (hex)		SHENZHEN CHUANGWEI-RGB ELECTRONICS CO.,LTD","BCEC23     (base 16)		SHENZHEN CHUANGWEI-RGB ELECTRONICS CO.,LTD","8C-E7-48   (hex)		Private","8CE748     (base 16)		Private","AC-06-C7   (hex)		ServerNet S.r.l.","AC06C7     (base 16)		ServerNet S.r.l.","CC-46-D6   (hex)		Cisco Systems, Inc","CC46D6     (base 16)		Cisco Systems, Inc","48-AD-08   (hex)		HUAWEI TECHNOLOGIES CO.,LTD","48AD08     (base 16)		HUAWEI TECHNOLOGIES CO.,LTD","2C-AB-00   (hex)		HUAWEI TECHNOLOGIES CO.,LTD","2CAB00     (base 16)		HUAWEI TECHNOLOGIES CO.,LTD","00-E0-FC   (hex)		HUAWEI TECHNOLOGIES CO.,LTD","00E0FC     (base 16)		HUAWEI TECHNOLOGIES CO.,LTD","24-DF-6A   (hex)		HUAWEI TECHNOLOGIES CO.,LTD","24DF6A     (base 16)		HUAWEI TECHNOLOGIES CO.,LTD","00-9A-CD   (hex)		HUAWEI TECHNOLOGIES CO.,LTD","009ACD     (base 16)		HUAWEI TECHNOLOGIES CO.,LTD","00-CD-FE   (hex)		Apple, Inc.","00CDFE     (base 16)		Apple, Inc.","38-F2-3E   (hex)		Microsoft Mobile Oy","38F23E     (base 16)		Microsoft Mobile Oy","58-AC-78   (hex)		Cisco Systems, Inc","58AC78     (base 16)		Cisco Systems, Inc","90-7F-61   (hex)		Chicony Electronics Co., Ltd.","907F61     (base 16)		Chicony Electronics Co., Ltd.","28-BC-18   (hex)		SourcingOverseas Co. Ltd","28BC18     (base 16)		SourcingOverseas Co. Ltd","80-7A-BF   (hex)		HTC Corporation","807ABF     (base 16)		HTC Corporation","40-9F-87   (hex)		Jide Technology (Hong Kong) Limited","409F87     (base 16)		Jide Technology (Hong Kong) Limited","3C-5A-B4   (hex)		Google, Inc.","3C5AB4     (base 16)		Google, Inc.","00-1A-11   (hex)		Google, Inc.","001A11     (base 16)		Google, Inc.","D8-3C-69   (hex)		Shenzhen TINNO Mobile Technology Corp.","D83C69     (base 16)		Shenzhen TINNO Mobile Technology Corp.","74-AC-5F   (hex)		Qiku Internet Network Scientific (Shenzhen) Co., Ltd.","74AC5F     (base 16)		Qiku Internet Network Scientific (Shenzhen) Co., Ltd.","Cyber Harbor, 2nd Mengxi Road, Hi-Tech Industrial Park (North), NanShan District","18-AF-61   (hex)		Apple, Inc.","18AF61     (base 16)		Apple, Inc.","BC-83-A7   (hex)		SHENZHEN CHUANGWEI-RGB ELECTRONICS CO.,LTD","BC83A7     (base 16)		SHENZHEN CHUANGWEI-RGB ELECTRONICS CO.,LTD","00-03-47   (hex)		Intel Corporation","000347     (base 16)		Intel Corporation","00-11-75   (hex)		Intel Corporation","001175     (base 16)		Intel Corporation","00-13-E8   (hex)		Intel Corporate","0013E8     (base 16)		Intel Corporate","00-13-02   (hex)		Intel Corporate","001302     (base 16)		Intel Corporate","E4-F8-9C   (hex)		Intel Corporate","E4F89C     (base 16)		Intel Corporate","A4-02-B9   (hex)		Intel Corporate","A402B9     (base 16)		Intel Corporate","4C-34-88   (hex)		Intel Corporate","4C3488     (base 16)		Intel Corporate","00-0D-0B   (hex)		BUFFALO.INC","000D0B     (base 16)		BUFFALO.INC","00-07-40   (hex)		BUFFALO.INC","000740     (base 16)		BUFFALO.INC","00-24-A5   (hex)		BUFFALO.INC","0024A5     (base 16)		BUFFALO.INC","DC-FB-02   (hex)		BUFFALO.INC","DCFB02     (base 16)		BUFFALO.INC","F4-CE-46   (hex)		Hewlett Packard","F4CE46     (base 16)		Hewlett Packard","00-1C-C4   (hex)		Hewlett Packard","001CC4     (base 16)		Hewlett Packard","00-25-B3   (hex)		Hewlett Packard","0025B3     (base 16)		Hewlett Packard","00-18-71   (hex)		Hewlett Packard","001871     (base 16)		Hewlett Packard","00-0B-CD   (hex)		Hewlett Packard","000BCD     (base 16)		Hewlett Packard","00-0E-7F   (hex)		Hewlett Packard","000E7F     (base 16)		Hewlett Packard","00-0F-20   (hex)		Hewlett Packard","000F20     (base 16)		Hewlett Packard","00-11-0A   (hex)		Hewlett Packard","00110A     (base 16)		Hewlett Packard","00-13-21   (hex)		Hewlett Packard","001321     (base 16)		Hewlett Packard","00-16-35   (hex)		Hewlett Packard","001635     (base 16)		Hewlett Packard","00-17-A4   (hex)		Hewlett Packard","0017A4     (base 16)		Hewlett Packard","00-08-02   (hex)		Hewlett Packard","000802     (base 16)		Hewlett Packard","90-E7-C4   (hex)		HTC Corporation","90E7C4     (base 16)		HTC Corporation","74-A7-8E   (hex)		zte corporation","74A78E     (base 16)		zte corporation","D8-60-B0   (hex)		bioM??rieux Italia S.p.A.","D860B0     (base 16)		bioM??rieux Italia S.p.A.","80-38-BC   (hex)		HUAWEI TECHNOLOGIES CO.,LTD","8038BC     (base 16)		HUAWEI TECHNOLOGIES CO.,LTD","D4-40-F0   (hex)		HUAWEI TECHNOLOGIES CO.,LTD","D440F0     (base 16)		HUAWEI TECHNOLOGIES CO.,LTD","64-A6-51   (hex)		HUAWEI TECHNOLOGIES CO.,LTD","64A651     (base 16)		HUAWEI TECHNOLOGIES CO.,LTD","E8-CD-2D   (hex)		HUAWEI TECHNOLOGIES CO.,LTD","E8CD2D     (base 16)		HUAWEI TECHNOLOGIES CO.,LTD","AC-E2-15   (hex)		HUAWEI TECHNOLOGIES CO.,LTD","ACE215     (base 16)		HUAWEI TECHNOLOGIES CO.,LTD","EC-23-3D   (hex)		HUAWEI TECHNOLOGIES CO.,LTD","EC233D     (base 16)		HUAWEI TECHNOLOGIES CO.,LTD","78-F5-FD   (hex)		HUAWEI TECHNOLOGIES CO.,LTD","78F5FD     (base 16)		HUAWEI TECHNOLOGIES CO.,LTD","80-B6-86   (hex)		HUAWEI TECHNOLOGIES CO.,LTD","80B686     (base 16)		HUAWEI TECHNOLOGIES CO.,LTD","10-C6-1F   (hex)		HUAWEI TECHNOLOGIES CO.,LTD","10C61F     (base 16)		HUAWEI TECHNOLOGIES CO.,LTD","88-53-D4   (hex)		HUAWEI TECHNOLOGIES CO.,LTD","8853D4     (base 16)		HUAWEI TECHNOLOGIES CO.,LTD","0C-37-DC   (hex)		HUAWEI TECHNOLOGIES CO.,LTD","0C37DC     (base 16)		HUAWEI TECHNOLOGIES CO.,LTD","BC-76-70   (hex)		HUAWEI TECHNOLOGIES CO.,LTD","BC7670     (base 16)		HUAWEI TECHNOLOGIES CO.,LTD","24-DB-AC   (hex)		HUAWEI TECHNOLOGIES CO.,LTD","24DBAC     (base 16)		HUAWEI TECHNOLOGIES CO.,LTD","00-21-E8   (hex)		Murata Manufacturing Co., Ltd.","0021E8     (base 16)		Murata Manufacturing Co., Ltd.","00-60-57   (hex)		Murata Manufacturing Co., Ltd.","006057     (base 16)		Murata Manufacturing Co., Ltd.","00-07-D8   (hex)		Hitron Technologies. Inc","0007D8     (base 16)		Hitron Technologies. Inc","00-12-F2   (hex)		Brocade Communications Systems, Inc.","0012F2     (base 16)		Brocade Communications Systems, Inc.","00-1B-ED   (hex)		Brocade Communications Systems, Inc.","001BED     (base 16)		Brocade Communications Systems, Inc.","00-24-38   (hex)		Brocade Communications Systems, Inc.","002438     (base 16)		Brocade Communications Systems, Inc.","84-74-2A   (hex)		zte corporation","84742A     (base 16)		zte corporation","68-1A-B2   (hex)		zte corporation","681AB2     (base 16)		zte corporation","E0-05-C5   (hex)		TP-LINK TECHNOLOGIES CO.,LTD.","E005C5     (base 16)		TP-LINK TECHNOLOGIES CO.,LTD.","A0-F3-C1   (hex)		TP-LINK TECHNOLOGIES CO.,LTD.","A0F3C1     (base 16)		TP-LINK TECHNOLOGIES CO.,LTD.","Building 24 (floors 1,3,4,5) and 28 (floors1-4)  Central Science and Technology Park,Shennan Rd, Nanshan","8C-21-0A   (hex)		TP-LINK TECHNOLOGIES CO.,LTD.","8C210A     (base 16)		TP-LINK TECHNOLOGIES CO.,LTD.","Building 24 (floors 1,3,4,5) and 28 (floors1-4)  Central Science and Technology Park,Shennan Rd, Nanshan","EC-17-2F   (hex)		TP-LINK TECHNOLOGIES CO.,LTD.","EC172F     (base 16)		TP-LINK TECHNOLOGIES CO.,LTD.","Building 24 (floors 1,3,4,5) and 28 (floors1-4)  Central Science and Technology Park,Shennan Rd, Nanshan","EC-88-8F   (hex)		TP-LINK TECHNOLOGIES CO.,LTD.","EC888F     (base 16)		TP-LINK TECHNOLOGIES CO.,LTD.","Building 24 (floors 1,3,4,5) and 28 (floors1-4)  Central Science and Technology Park","14-CF-92   (hex)		TP-LINK TECHNOLOGIES CO.,LTD.","14CF92     (base 16)		TP-LINK TECHNOLOGIES CO.,LTD.","Building 24 (floors 1,3,4,5) and 28 (floors1-4)","64-56-01   (hex)		TP-LINK TECHNOLOGIES CO.,LTD.","645601     (base 16)		TP-LINK TECHNOLOGIES CO.,LTD.","Building? 24 (floors 1,3,4,5) and? 28 (floors1-4)","14-CC-20   (hex)		TP-LINK TECHNOLOGIES CO.,LTD." | % {$NIC_textbox.AutoCompleteCustomSource.AddRange($_) }

        }
        $DB_tab.Controls.Add($NIC_textbox)
        $download_form.Close()

        #Creat The DB Submit Button
        $DB_submit_button = New-Object System.Windows.Forms.Button
        $DB_submit_button.width = 50
        $DB_submit_button.Height = 20
        $DB_submit_button.left = 350
        $DB_submit_button.top = 50
        $DB_submit_button.Text = "Submit"
        $DB_tab.Controls.Add($DB_submit_button)

        function random_DUI(){
                 $B = Get-Date
                 $C = $B.Hour + $B.Second + $B.Millisecond + $B.Minute
                 $A = Get-Random -SetSeed $C -Minimum 6000000 -Maximum 9999999
                 $A
                 return 
        }
        #Creat Label To Notice The User

            $Notic_DB_label = New-Object System.Windows.Forms.Label
            $Notic_DB_label.width = 370
            $Notic_DB_label.Height = 20 
            $Notic_DB_label.top = 100
            $Notic_DB_label.Left = 80
            $Notic_DB_label.ForeColor = "red"
            $Notic_DB_label_font = New-Object System.Drawing.Font ( [system.drawing.fontfamily]::GenericSansSerif , 10 , [System.Drawing.FontStyle]::Bold)
            $Notic_DB_label.Font = $Notic_DB_label_font
            $Notic_DB_label.Text = " Go To Mac-Changer Tab and apply Changes "

        $DB_submit_button.add_Click({

            $R = random_DUI
            $V = "{0:X6}" -f [System.Convert]::ToString($R,16).ToUpper()
            $neww_mac_textbox = $NIC_textbox.text.split(" ")[0] -replace "-","" 
            $new_mac_textbox.text = $neww_mac_textbox + $V
            $NIC_textbox.ReadOnly = $false
            $DB_tab.Controls.Add($Notic_DB_label)
        });


        
If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole(

   [Security.Principal.WindowsBuiltInRole] “Administrator”))

{

$Admin = New-Object System.Windows.Forms.Label
$Admin.Width = 500
$Admin.Height = 40
$Admin.Left = 60
$Admin.ForeColor = "red"
$Admin.Text = “You do not have Administrator rights to run this script!`nPlease re-run this script as an Administrator!”

$Admin.font = New-Object System.Drawing.Font ([System.Drawing.FontFamily]::GenericSerif , "10" , [System.Drawing.FontStyle]::Bold)
$Mac_change_tab.Controls.Add($Admin)

}
$Main_form.ShowDialog()
[System.GC]::Collect()
