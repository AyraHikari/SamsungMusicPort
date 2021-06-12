.class public Lcom/samsung/android/app/music/list/ListPlayableImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/Playable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/ListPlayableImpl$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/list/ListPlayableImpl$Companion;


# instance fields
.field private final b:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

.field private final c:Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;

.field private final d:Landroid/support/v4/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/list/ListPlayableImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/ListPlayableImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/ListPlayableImpl;->a:Lcom/samsung/android/app/music/list/ListPlayableImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/ListPlayableImpl;->d:Landroid/support/v4/app/Fragment;

    .line 17
    iget-object p1, p0, Lcom/samsung/android/app/music/list/ListPlayableImpl;->d:Landroid/support/v4/app/Fragment;

    if-eqz p1, :cond_1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/ListPlayableImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    .line 18
    iget-object p1, p0, Lcom/samsung/android/app/music/list/ListPlayableImpl;->d:Landroid/support/v4/app/Fragment;

    if-eqz p1, :cond_0

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/ListPlayableImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.list.ListInfoGetter"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.list.CheckableList"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/ListPlayableImpl;)Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/samsung/android/app/music/list/ListPlayableImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;

    return-object p0
.end method


# virtual methods
.method protected a(I)V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 41
    iget-object p1, p0, Lcom/samsung/android/app/music/list/ListPlayableImpl;->d:Landroid/support/v4/app/Fragment;

    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;->K()V

    :cond_1
    return-void
.end method

.method protected final b()Landroid/support/v4/app/Fragment;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/samsung/android/app/music/list/ListPlayableImpl;->d:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public l_()V
    .locals 3

    .line 21
    iget-object v0, p0, Lcom/samsung/android/app/music/list/ListPlayableImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    new-instance v1, Lcom/samsung/android/app/music/list/ListPlayableImpl$play$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/ListPlayableImpl$play$1;-><init>(Lcom/samsung/android/app/music/list/ListPlayableImpl;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->a(ILcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;)V

    return-void
.end method
