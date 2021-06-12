.class final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$SavedExtraActionNotifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SavedExtraActionNotifier"
.end annotation


# instance fields
.field private final center:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter<",
            "*>;"
        }
    .end annotation
.end field

.field private final savedExtras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "center"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$SavedExtraActionNotifier;->center:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    .line 491
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$SavedExtraActionNotifier;->savedExtras:Landroid/os/Bundle;

    return-void
.end method

.method private final notifySavedExtraActions(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter<",
            "*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 508
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 509
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 510
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "action"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->access$notifyExtraChanged(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final putAction$musicLibrary_release(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$SavedExtraActionNotifier;->savedExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final removeAction$musicLibrary_release(Ljava/lang/String;)V
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$SavedExtraActionNotifier;->savedExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 2

    .line 503
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$SavedExtraActionNotifier;->center:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$SavedExtraActionNotifier;->savedExtras:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$SavedExtraActionNotifier;->notifySavedExtraActions(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;Landroid/os/Bundle;)V

    .line 504
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter$SavedExtraActionNotifier;->savedExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    return-void
.end method
