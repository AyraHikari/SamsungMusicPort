.class public final Lcom/samsung/android/app/music/list/local/DefaultPlaylistManagerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 411
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManagerKt;->a:Z

    return-void
.end method

.method public static final synthetic a()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManagerKt;->a:Z

    return v0
.end method

.method public static final synthetic a(Landroid/support/v4/app/Fragment;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManagerKt;->b(Landroid/support/v4/app/Fragment;)Z

    move-result p0

    return p0
.end method

.method private static final b(Landroid/support/v4/app/Fragment;)Z
    .locals 1

    .line 414
    sget-boolean v0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManagerKt;->a:Z

    if-eqz v0, :cond_1

    .line 415
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;

    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;->isMultiWindowMode()Z

    move-result p0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.MultiWindowManager"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
