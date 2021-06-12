.class public final Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;
.super Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController$ControlViewType;,
        Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController$Companion;

.field private static final h:[I


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController$ControlViewType;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

.field private final f:Landroid/app/Activity;

.field private final g:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->a:Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController$Companion;

    const/4 v0, 0x3

    .line 108
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->h:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->f:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->g:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->b:Ljava/util/List;

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->c:Ljava/util/List;

    const/4 p1, -0x1

    .line 25
    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->d:I

    .line 29
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    const-string p2, "EmptyMusicMetadata.getInstance()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->e:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 32
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->g:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    move-object p2, p0

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;ZILjava/lang/Object;)V

    return-void
.end method

.method private final b(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->d:I

    return-void
.end method

.method public static final synthetic b()[I
    .locals 1

    .line 19
    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->h:[I

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->d:I

    return v0
.end method

.method public final a(I)V
    .locals 5

    .line 59
    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->a:Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController$Companion;

    const-string v0, "SMUSIC-FullViewTypeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeToViewType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->d:I

    if-ne v0, p1, :cond_0

    return-void

    .line 64
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->b(I)V

    .line 65
    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->a:Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController$Companion;

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->c:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 150
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController$ControlViewType;

    .line 66
    sget-object v2, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->a:Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController$Companion;

    .line 152
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "SMUSIC-FullViewTypeController"

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeToViewType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController$ControlViewType;->a()Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController$ControlViewType;->b()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->g:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController$ControlViewType;->a()Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController$ControlViewType;->b()[I

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/collections/ArraysKt;->a([II)Z

    move-result v1

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->b(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;Z)V

    goto :goto_0

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->f:Landroid/app/Activity;

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const-string p1, "full_player"

    goto :goto_2

    .line 74
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->e:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isRadio()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "current_playlist_radio"

    goto :goto_2

    :cond_4
    const-string p1, "current_playlist_mod"

    .line 70
    :goto_2
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/player/logger/googlefirebase/PlayerFireBase;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;)V
    .locals 2

    const-string v0, "controller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->c:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController$removeController$1;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController$removeController$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->a(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->g:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;)V

    return-void
.end method

.method public final varargs a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;[I)V
    .locals 3

    const-string v0, "controller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewTypes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    sget-object p2, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->a:Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController$Companion;

    .line 112
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "SMUSIC-FullViewTypeController"

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is already registered"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->c:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController$ControlViewType;

    array-length v2, p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController$ControlViewType;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->d:I

    invoke-static {p2, v0}, Lkotlin/collections/ArraysKt;->a([II)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 47
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->g:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p2, p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;ZILjava/lang/Object;)V

    goto :goto_1

    .line 49
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->g:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;Z)V

    :goto_1
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 1

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->e:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    return-void
.end method

.method public release()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
