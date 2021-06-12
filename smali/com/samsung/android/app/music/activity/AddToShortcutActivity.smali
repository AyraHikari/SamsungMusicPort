.class public final Lcom/samsung/android/app/music/activity/AddToShortcutActivity;
.super Lcom/samsung/android/app/music/activity/BaseServiceActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/activity/AddToShortcutActivity$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/activity/AddToShortcutActivity$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/activity/AddToShortcutActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/activity/AddToShortcutActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/activity/AddToShortcutActivity;->a:Lcom/samsung/android/app/music/activity/AddToShortcutActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 17
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/AddToShortcutActivity;->getPermissionManager()Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object v0

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 21
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    .line 19
    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->a(Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;ZZLcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;[Ljava/lang/String;ILjava/lang/Object;)V

    const p1, 0x7f040009

    .line 24
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/activity/AddToShortcutActivity;->setContentView(I)V

    const p1, 0x7f130073

    .line 26
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/activity/AddToShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/activity/AddToShortcutActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/AddToShortcutActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 28
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 29
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/AddToShortcutActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "key_list_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const v0, 0x10030

    const v1, 0x7f13012a

    if-nez p1, :cond_2

    goto :goto_1

    .line 33
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_4

    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/AddToShortcutActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/AddToShortcutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0347

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_3
    const-string p1, "AddToShortcutHeartFragment"

    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/AddToShortcutActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_6

    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/AddToShortcutActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v2, "supportFragmentManager"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 38
    new-instance v2, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment;

    invoke-direct {v2}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment;-><init>()V

    check-cast v2, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1, v2, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 66
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_2

    :cond_4
    :goto_1
    const v0, 0x10004

    if-eqz p1, :cond_7

    .line 42
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_7

    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/AddToShortcutActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/AddToShortcutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b034e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_5
    const-string p1, "AddToShortcutPlaylistFragment"

    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/AddToShortcutActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_6

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/AddToShortcutActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v2, "supportFragmentManager"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 47
    new-instance v2, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;

    invoke-direct {v2}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;-><init>()V

    check-cast v2, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1, v2, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 72
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_6
    :goto_2
    return-void

    .line 51
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is no matched track listType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
