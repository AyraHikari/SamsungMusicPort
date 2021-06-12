.class public Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseDialogFragment;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseDialogFragment;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 27
    new-instance v0, Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog;

    invoke-direct {v0}, Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog;-><init>()V

    .line 28
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "playlistId"

    .line 29
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog;->a:Ljava/lang/String;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 60
    new-instance v0, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance v1, Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog$2;-><init>(Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->deleteFavoriteCategoryAsync(Lcom/samsung/android/app/music/list/favorite/Category;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->deleteRadioQueue(Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog;->b()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "playlistId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 39
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog;->setCancelable(Z)V

    .line 40
    new-instance p1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b00b4

    .line 41
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0b00b3

    .line 42
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog$1;-><init>(Lcom/samsung/android/app/music/dialog/InvalidPlaylistDialog;)V

    const v1, 0x7f0b02d3

    .line 43
    invoke-virtual {p1, v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
