.class public final Lcom/samsung/android/app/music/list/local/folder/HideFolderActivity;
.super Lcom/samsung/android/app/music/activity/BaseServiceActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/folder/HideFolderActivity$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/list/local/folder/HideFolderActivity$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/list/local/folder/HideFolderActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/folder/HideFolderActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/local/folder/HideFolderActivity;->a:Lcom/samsung/android/app/music/list/local/folder/HideFolderActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 256
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 269
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0400c2

    .line 271
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/folder/HideFolderActivity;->setContentView(I)V

    .line 273
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/HideFolderActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "bucket_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 274
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/HideFolderActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "HideFolderFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 275
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/HideFolderActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f13012a

    .line 276
    sget-object v2, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeFragment;->a:Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeFragment$Companion;

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-virtual {v2, p1}, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeFragment$Companion;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeFragment;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    const-string v2, "HideFolderFragment"

    .line 275
    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 277
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    :goto_0
    return-void
.end method
