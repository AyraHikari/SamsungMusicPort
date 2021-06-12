.class public Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeslTextWatcher"
.end annotation


# instance fields
.field private final INVALID_POSITION_ID:I

.field private final LAST_POSITION_ID:I

.field private mChangedLen:I

.field private mCheck:I

.field private mId:I

.field private mIsMonth:Z

.field private mMaxLen:I

.field private mNext:I

.field private mPrevText:Ljava/lang/String;

.field final synthetic this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;IIZ)V
    .locals 2

    .line 994
    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 983
    iput p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->INVALID_POSITION_ID:I

    const/4 v0, 0x2

    .line 984
    iput v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->LAST_POSITION_ID:I

    const/4 v1, 0x0

    .line 991
    iput v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mChangedLen:I

    .line 995
    iput p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mMaxLen:I

    .line 996
    iput p3, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    .line 997
    iput-boolean p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mIsMonth:Z

    .line 998
    iget p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mCheck:I

    .line 999
    iget p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mCheck:I

    if-gez p2, :cond_0

    .line 1000
    iput v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mCheck:I

    .line 1002
    :cond_0
    iget p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    add-int/lit8 p2, p2, 0x1

    if-le p2, v0, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    add-int/lit8 p1, p1, 0x1

    :goto_0
    iput p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mNext:I

    return-void
.end method

.method private changeFocus()V
    .locals 3

    .line 1198
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2900(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    .line 1200
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1203
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] changeFocus() mNext : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mNext:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCheck : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mCheck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2100(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;Ljava/lang/String;)V

    .line 1205
    iget v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mNext:I

    if-ltz v0, :cond_2

    .line 1206
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mCheck:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1207
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mNext:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1210
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1211
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    :cond_2
    return-void
.end method

.method private isFarsiLanguage()Z
    .locals 2

    .line 1180
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$3100(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fa"

    .line 1181
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isMeaLanguage()Z
    .locals 2

    .line 1175
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$3100(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    .line 1176
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ur"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isMonthStr(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1189
    :goto_0
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$3200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1190
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$3300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private isNumericStr(Ljava/lang/String;)Z
    .locals 2

    .line 1185
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isSwaLanguage()Z
    .locals 2

    .line 1166
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$3100(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hi"

    .line 1167
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ta"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ml"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "te"

    .line 1168
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "or"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ne"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "as"

    .line 1169
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "bn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "gu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "si"

    .line 1170
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "pa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "kn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mr"

    .line 1171
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private showInvalidValueEnteredToast(Ljava/lang/String;I)V
    .locals 2

    .line 1155
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_0

    .line 1157
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object p1

    iget v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    aget-object p1, p1, v0

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1159
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2800(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/widget/Toast;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1160
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    iget-object p2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2900(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$3000(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2802(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 1162
    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2800(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 1007
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] afterTextChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2100(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .line 1012
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] beforeTextChanged: "

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

    invoke-static {v0, p2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2100(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;Ljava/lang/String;)V

    .line 1014
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mPrevText:Ljava/lang/String;

    .line 1015
    iput p4, p0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mChangedLen:I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    .line 1020
    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] onTextChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mPrevText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2100(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;Ljava/lang/String;)V

    .line 1022
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1023
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1024
    iget-object v4, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v4}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v4

    iget v5, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    const-string v5, "onClick"

    .line 1025
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "onLongClick"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1026
    :cond_0
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] TAG exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2100(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;Ljava/lang/String;)V

    return-void

    .line 1030
    :cond_1
    iget-object v4, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v4}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v4

    iget v5, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/widget/EditText;->isFocused()Z

    move-result v4

    if-nez v4, :cond_2

    return-void

    .line 1034
    :cond_2
    iget-boolean v4, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mIsMonth:Z

    const/16 v5, 0xa

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_c

    .line 1036
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2400(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mChangedLen:I

    if-ne v1, v7, :cond_8

    .line 1037
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "] Samsung Keypad Num Month"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2100(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;Ljava/lang/String;)V

    .line 1038
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$1300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/support/v7/widget/SeslNumberPicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPicker;->getMinValue()I

    move-result v1

    .line 1039
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1040
    iget v9, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mMaxLen:I

    if-ne v2, v9, :cond_5

    if-ge v4, v1, :cond_4

    .line 1042
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v1

    if-ge v1, v6, :cond_3

    .line 1044
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    .line 1043
    invoke-direct {p0, v1, v7}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const-string v1, ""

    .line 1046
    invoke-direct {p0, v1, v8}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    :goto_0
    return-void

    .line 1050
    :cond_4
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->changeFocus()V

    goto/16 :goto_5

    :cond_5
    if-lez v2, :cond_1e

    if-lt v1, v5, :cond_6

    const-string v2, "0"

    .line 1052
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v1, ""

    .line 1053
    invoke-direct {p0, v1, v8}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    return-void

    :cond_6
    const-string v2, "1"

    .line 1057
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    const-string v2, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    if-ge v4, v1, :cond_7

    const-string v1, ""

    .line 1059
    invoke-direct {p0, v1, v8}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    return-void

    .line 1062
    :cond_7
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->changeFocus()V

    goto/16 :goto_5

    .line 1065
    :cond_8
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mPrevText:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->isNumericStr(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1066
    iget v1, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mMaxLen:I

    if-lt v2, v1, :cond_a

    .line 1067
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->isMeaLanguage()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1068
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mPrevText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-direct {p0, v3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->isMonthStr(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1069
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->changeFocus()V

    goto/16 :goto_5

    .line 1072
    :cond_9
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->changeFocus()V

    goto/16 :goto_5

    .line 1074
    :cond_a
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->isSwaLanguage()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->isFarsiLanguage()Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_b
    if-lez v2, :cond_1e

    .line 1075
    invoke-direct {p0, v3}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->isNumericStr(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1076
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->changeFocus()V

    goto/16 :goto_5

    .line 1079
    :cond_c
    iget v4, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mChangedLen:I

    if-ne v4, v7, :cond_1e

    .line 1081
    iget v4, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mMaxLen:I

    const/4 v9, 0x3

    if-ge v4, v9, :cond_15

    .line 1082
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$1000(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/support/v7/widget/SeslNumberPicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPicker;->getMinValue()I

    move-result v1

    .line 1083
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1084
    iget-object v10, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mPrevText:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v10, v2, :cond_f

    iget v10, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mMaxLen:I

    if-ne v2, v10, :cond_f

    if-ge v4, v1, :cond_e

    .line 1086
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_d

    .line 1088
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    .line 1087
    invoke-direct {p0, v1, v7}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    goto :goto_1

    :cond_d
    const-string v1, ""

    .line 1090
    invoke-direct {p0, v1, v8}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    :goto_1
    return-void

    .line 1094
    :cond_e
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->changeFocus()V

    goto/16 :goto_5

    :cond_f
    if-lt v1, v5, :cond_10

    if-eqz v4, :cond_12

    :cond_10
    const/16 v2, 0x14

    if-lt v1, v2, :cond_11

    if-eqz v4, :cond_12

    if-eq v4, v7, :cond_12

    :cond_11
    const/16 v2, 0x1e

    if-lt v1, v2, :cond_13

    if-eqz v4, :cond_12

    if-eq v4, v7, :cond_12

    if-ne v4, v6, :cond_13

    :cond_12
    const-string v1, ""

    .line 1099
    invoke-direct {p0, v1, v8}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    return-void

    :cond_13
    if-le v4, v9, :cond_1e

    if-ge v4, v1, :cond_14

    const-string v1, ""

    .line 1104
    invoke-direct {p0, v1, v8}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    return-void

    .line 1107
    :cond_14
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->changeFocus()V

    goto/16 :goto_5

    .line 1113
    :cond_15
    iget-object v4, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v4}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$1400(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/support/v7/widget/SeslNumberPicker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/SeslNumberPicker;->getMinValue()I

    move-result v4

    .line 1114
    iget-object v5, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v5}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$1400(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/support/v7/widget/SeslNumberPicker;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/widget/SeslNumberPicker;->getMaxValue()I

    move-result v5

    .line 1115
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1116
    iget-object v11, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mPrevText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v11, v2, :cond_1b

    iget v11, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mMaxLen:I

    if-ne v2, v11, :cond_1b

    if-lt v10, v4, :cond_1a

    if-le v10, v5, :cond_16

    goto/16 :goto_4

    .line 1122
    :cond_16
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2400(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$1300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/support/v7/widget/SeslNumberPicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPicker;->getValue()I

    move-result v1

    sub-int/2addr v1, v7

    goto :goto_2

    :cond_17
    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    .line 1123
    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$1300(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/support/v7/widget/SeslNumberPicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPicker;->getValue()I

    move-result v1

    .line 1124
    :goto_2
    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    .line 1125
    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v2

    iget-object v4, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v4}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$1000(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Landroid/support/v7/widget/SeslNumberPicker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/SeslNumberPicker;->getValue()I

    move-result v4

    invoke-virtual {v2, v10, v1, v4}, Ljava/util/Calendar;->set(III)V

    .line 1126
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1127
    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 1128
    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2500(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v4, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v4}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2500(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    .line 1129
    invoke-static {v5}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2500(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1128
    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Calendar;->set(III)V

    .line 1130
    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$200(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2600(Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_3

    .line 1134
    :cond_18
    invoke-direct {p0}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->changeFocus()V

    goto :goto_5

    .line 1131
    :cond_19
    :goto_3
    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v9}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    return-void

    .line 1118
    :cond_1a
    :goto_4
    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v9}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    return-void

    :cond_1b
    const-wide v11, 0x408f400000000000L    # 1000.0

    const-wide/high16 v13, 0x4024000000000000L    # 10.0

    add-int/lit8 v6, v2, -0x1

    int-to-double v8, v6

    .line 1136
    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v11, v8

    double-to-int v8, v11

    const-string v9, ""

    if-eq v2, v7, :cond_1c

    const/4 v7, 0x0

    .line 1140
    invoke-virtual {v3, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1143
    :cond_1c
    div-int/2addr v4, v8

    if-lt v10, v4, :cond_1d

    div-int/2addr v5, v8

    if-le v10, v5, :cond_1e

    .line 1145
    :cond_1d
    invoke-static {}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout;->access$2700()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] mPrevText: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mPrevText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", setValue: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", length: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    invoke-direct {p0, v9, v6}, Landroid/support/v7/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    :cond_1e
    :goto_5
    return-void
.end method
