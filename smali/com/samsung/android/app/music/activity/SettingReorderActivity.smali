.class public Lcom/samsung/android/app/music/activity/SettingReorderActivity;
.super Lcom/samsung/android/app/music/activity/BaseServiceActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 15
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/SettingReorderActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v0, "SettingReorder"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    const v0, 0x7f0b0194

    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/SettingReorderActivity;->setTitle(I)V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 23
    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->a(Z)Landroid/support/v4/app/Fragment;

    move-result-object p1

    .line 24
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/SettingReorderActivity;->setTitle(I)V

    .line 25
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/SettingReorderActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    const-string v2, "SettingReorder"

    .line 26
    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method
