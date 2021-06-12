.class public Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeslTextWatcher"
.end annotation


# instance fields
.field private changedLen:I

.field private mId:I

.field private mMaxLen:I

.field private mNext:I

.field private prevText:Ljava/lang/String;

.field final synthetic this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;II)V
    .locals 0

    .line 1016
    iput-object p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1012
    iput p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changedLen:I

    .line 1017
    iput p2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mMaxLen:I

    .line 1018
    iput p3, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    .line 1020
    iget p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    add-int/lit8 p1, p1, 0x1

    const/4 p2, 0x2

    if-lt p1, p2, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    add-int/lit8 p1, p1, 0x1

    :goto_0
    iput p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mNext:I

    return-void
.end method

.method private changeFocus()V
    .locals 3

    .line 1096
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    iget-object v0, v0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    .line 1097
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1098
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1102
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mNext:I

    if-ltz v0, :cond_1

    .line 1103
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$1300(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mNext:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1105
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$1300(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1106
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$1300(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0

    .line 1108
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1109
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    iget-object v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$1300(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->setMinute(I)V

    .line 1110
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$1300(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    :cond_2
    :goto_0
    return-void
.end method

.method private convertDigitCharacterToNumber(Ljava/lang/String;)I
    .locals 5

    .line 1116
    invoke-static {}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$1400()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-char v4, v0, v2

    .line 1117
    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1118
    rem-int/lit8 v3, v3, 0xa

    return v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 1025
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$1200(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Picker"

    .line 1026
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aftertextchanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .line 1032
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$1200(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Picker"

    .line 1033
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beforeTextChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->prevText:Ljava/lang/String;

    .line 1036
    iput p4, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changedLen:I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .line 1041
    iget-object v0, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$1200(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Picker"

    .line 1042
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTextChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Picker"

    .line 1043
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTextChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    :cond_0
    iget-object p2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p2}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$1300(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object p2

    iget p3, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object p2, p2, p3

    invoke-virtual {p2}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_2

    const-string p3, "onClick"

    .line 1048
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    const-string p3, "onLongClick"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1049
    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$1300(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object p1

    iget p2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object p1, p1, p2

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    return-void

    .line 1053
    :cond_2
    iget p2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    const/4 p3, 0x1

    packed-switch p2, :pswitch_data_0

    .line 1087
    iget-object p2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-ge p2, p3, :cond_6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iget p2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mMaxLen:I

    if-ne p1, p2, :cond_6

    iget-object p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    .line 1088
    invoke-static {p1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$1300(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object p1

    iget p2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1089
    invoke-direct {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changeFocus()V

    goto/16 :goto_0

    .line 1071
    :pswitch_0
    iget p2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changedLen:I

    if-ne p2, p3, :cond_6

    .line 1072
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    iget p3, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mMaxLen:I

    if-ne p2, p3, :cond_3

    .line 1073
    iget-object p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$1300(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object p1

    iget p2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1074
    invoke-direct {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changeFocus()V

    goto/16 :goto_0

    .line 1076
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_6

    .line 1077
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->convertDigitCharacterToNumber(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x6

    if-lt p1, p2, :cond_6

    const/16 p2, 0x9

    if-gt p1, p2, :cond_6

    .line 1079
    iget-object p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$1300(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object p1

    iget p2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1080
    invoke-direct {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changeFocus()V

    goto :goto_0

    .line 1055
    :pswitch_1
    iget p2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changedLen:I

    if-ne p2, p3, :cond_6

    .line 1056
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    iget p4, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mMaxLen:I

    if-ne p2, p4, :cond_4

    .line 1057
    iget-object p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$1300(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object p1

    iget p2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1058
    invoke-direct {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changeFocus()V

    goto :goto_0

    .line 1060
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_6

    .line 1061
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->convertDigitCharacterToNumber(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x2

    if-gt p1, p2, :cond_5

    if-le p1, p3, :cond_6

    .line 1062
    iget-object p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->is24Hour()Z

    move-result p1

    if-nez p1, :cond_6

    .line 1063
    :cond_5
    iget-object p1, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;->access$1300(Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object p1

    iget p2, p0, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1064
    invoke-direct {p0}, Landroid/support/v7/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changeFocus()V

    :cond_6
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
