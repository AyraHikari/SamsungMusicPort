.class public final Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher$StateObserver;,
        Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher$Companion;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher$StateObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher;->a:Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher;->b:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher$StateObserver;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_0

    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final a(Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher$StateObserver;Z)V
    .locals 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 25
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher;->a:Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher$Companion;

    .line 65
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "SMUSIC-StatePublisher"

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerStateChangeObserver state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " observer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher;->c:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher$StateObserver;->getState()Z

    move-result v0

    if-eq v0, p2, :cond_2

    .line 29
    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher$StateObserver;->setState(Z)V

    :cond_2
    return-void
.end method

.method public final b(Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher$StateObserver;Z)V
    .locals 4

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 46
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, p2, :cond_2

    .line 47
    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher;->a:Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher$Companion;

    .line 80
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "SMUSIC-StatePublisher"

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableController but state is same observer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 50
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher;->c:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher;->a:Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher$Companion;

    .line 95
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "SMUSIC-StatePublisher"

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableController state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " observer = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher$StateObserver;

    .line 53
    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher$StateObserver;->setState(Z)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
