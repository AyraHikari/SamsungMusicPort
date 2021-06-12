.class public Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;
.super Landroid/support/v7/preference/SwitchPreferenceCompat;
.source "SourceFile"


# instance fields
.field private a:Landroid/support/v7/widget/SwitchCompat;

.field private b:Z

.field private c:Landroid/support/v4/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f010236

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->b:Z

    return-void
.end method

.method private a(Landroid/view/View;)Landroid/support/v7/widget/SwitchCompat;
    .locals 3

    const v0, 0x1020018

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 73
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 74
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 75
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 76
    instance-of v2, v1, Landroid/support/v7/widget/SwitchCompat;

    if-eqz v2, :cond_0

    .line 77
    check-cast v1, Landroid/support/v7/widget/SwitchCompat;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->c:Landroid/support/v4/app/FragmentManager;

    return-void
.end method

.method public isChecked()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->b:Z

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3

    .line 52
    invoke-super {p0, p1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 54
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v2, 0x1020016

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const v2, 0x7f0b0266

    .line 59
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 63
    :cond_0
    iget-object p1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->a(Landroid/view/View;)Landroid/support/v7/widget/SwitchCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->a:Landroid/support/v7/widget/SwitchCompat;

    .line 64
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->a:Landroid/support/v7/widget/SwitchCompat;

    if-eqz p1, :cond_1

    .line 65
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->a:Landroid/support/v7/widget/SwitchCompat;

    iget-boolean v0, p0, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->b:Z

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 66
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->a:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/SwitchCompat;->setClickable(Z)V

    .line 67
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->a:Landroid/support/v7/widget/SwitchCompat;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SwitchCompat;->setDuplicateParentStateEnabled(Z)V

    :cond_1
    return-void
.end method

.method protected onClick()V
    .locals 3

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->c:Landroid/support/v4/app/FragmentManager;

    sget-object v1, Lcom/samsung/android/app/music/dialog/MobileDataConfirmDialog;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_2

    .line 91
    invoke-static {}, Lcom/samsung/android/app/music/dialog/MobileDataConfirmDialog;->a()Lcom/samsung/android/app/music/dialog/MobileDataConfirmDialog;

    move-result-object v0

    .line 92
    new-instance v1, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference$1;-><init>(Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/dialog/MobileDataConfirmDialog;->a(Lcom/samsung/android/app/music/dialog/MobileDataConfirmDialog$OnConnectListener;)V

    .line 98
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->c:Landroid/support/v4/app/FragmentManager;

    sget-object v2, Lcom/samsung/android/app/music/dialog/MobileDataConfirmDialog;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/dialog/MobileDataConfirmDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_0
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0b0265

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 106
    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->setChecked(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 3

    const-string v0, "MobileDataPreference"

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChecked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-super {p0, p1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    .line 114
    iput-boolean p1, p0, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->b:Z

    .line 115
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->persistBoolean(Z)Z

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->a:Landroid/support/v7/widget/SwitchCompat;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->a:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    :cond_0
    return-void
.end method
