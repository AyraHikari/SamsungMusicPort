.class public Lcom/samsung/android/app/music/settings/preference/ExplicitPreference;
.super Landroid/support/v7/preference/SwitchPreferenceCompat;
.source "SourceFile"


# instance fields
.field private a:Landroid/support/v7/widget/SwitchCompat;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/settings/preference/ExplicitPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f010236

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/settings/preference/ExplicitPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/music/settings/preference/ExplicitPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/samsung/android/app/music/settings/preference/ExplicitPreference;->b:Z

    return-void
.end method

.method private a(Landroid/view/View;)Landroid/support/v7/widget/SwitchCompat;
    .locals 3

    const v0, 0x1020018

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 59
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 60
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 61
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 62
    instance-of v2, v1, Landroid/support/v7/widget/SwitchCompat;

    if-eqz v2, :cond_0

    .line 63
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
.method public isChecked()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/samsung/android/app/music/settings/preference/ExplicitPreference;->b:Z

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 49
    iget-object p1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/preference/ExplicitPreference;->a(Landroid/view/View;)Landroid/support/v7/widget/SwitchCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/settings/preference/ExplicitPreference;->a:Landroid/support/v7/widget/SwitchCompat;

    .line 50
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/preference/ExplicitPreference;->a:Landroid/support/v7/widget/SwitchCompat;

    if-eqz p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/preference/ExplicitPreference;->a:Landroid/support/v7/widget/SwitchCompat;

    iget-boolean v0, p0, Lcom/samsung/android/app/music/settings/preference/ExplicitPreference;->b:Z

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 52
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/preference/ExplicitPreference;->a:Landroid/support/v7/widget/SwitchCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SwitchCompat;->setClickable(Z)V

    .line 53
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/preference/ExplicitPreference;->a:Landroid/support/v7/widget/SwitchCompat;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SwitchCompat;->setDuplicateParentStateEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 4

    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/preference/ExplicitPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_2

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/preference/ExplicitPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/preference/ExplicitPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v1

    .line 75
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/music/model/UserInfo;)I

    move-result v0

    const-string v1, "ExplicitPreference"

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected - explicitType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/preference/ExplicitPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "explicit-invalid"

    .line 88
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/music/milk/MilkDialogLauncher;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 83
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/settings/preference/ExplicitPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/settings/preference/ExplicitPreference;->setChecked(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 3

    const-string v0, "ExplicitPreference"

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChecked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-super {p0, p1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    .line 101
    iput-boolean p1, p0, Lcom/samsung/android/app/music/settings/preference/ExplicitPreference;->b:Z

    .line 102
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/settings/preference/ExplicitPreference;->persistBoolean(Z)Z

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/preference/ExplicitPreference;->a:Landroid/support/v7/widget/SwitchCompat;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/preference/ExplicitPreference;->a:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    :cond_0
    return-void
.end method
