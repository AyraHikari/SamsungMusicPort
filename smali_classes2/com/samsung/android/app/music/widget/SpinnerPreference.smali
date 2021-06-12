.class public Lcom/samsung/android/app/music/widget/SpinnerPreference;
.super Landroid/preference/Preference;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/Spinner;

.field private b:Z


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .line 152
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/SpinnerPreference;->a:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 154
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 158
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/app/music/widget/SpinnerPreference;->a:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 160
    :cond_1
    check-cast p1, Landroid/view/ViewGroup;

    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/SpinnerPreference;->a:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 162
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/SpinnerPreference;->a:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 163
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/SpinnerPreference;->a:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setSummary(I)V
    .locals 3

    .line 103
    iget-boolean v0, p0, Lcom/samsung/android/app/music/widget/SpinnerPreference;->b:Z

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/SpinnerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/SpinnerPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0f00d7

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 106
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result p1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 107
    invoke-super {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 109
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->setSummary(I)V

    :goto_0
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 3

    .line 91
    iget-boolean v0, p0, Lcom/samsung/android/app/music/widget/SpinnerPreference;->b:Z

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/SpinnerPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0f00d7

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 94
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result p1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 95
    invoke-super {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
