.class final Lcom/samsung/android/app/music/main/EventManagerTask$getEventPopup$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/main/EventManagerTask;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/samsung/android/app/music/model/milkevent/EventPopupList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/main/EventManagerTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/main/EventManagerTask;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask$getEventPopup$2;->a:Lcom/samsung/android/app/music/main/EventManagerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/samsung/android/app/music/model/milkevent/EventPopupList;)V
    .locals 5

    const-string v0, "EventManager"

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEventPopup eventPopupList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/app/music/main/EventManagerTask$getEventPopup$2$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/main/EventManagerTask$getEventPopup$2$1;-><init>(Lcom/samsung/android/app/music/main/EventManagerTask$getEventPopup$2;Lcom/samsung/android/app/music/model/milkevent/EventPopupList;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 174
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-string v0, "list"

    .line 176
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milkevent/EventPopupList;->getEventPopupList()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 177
    iget-object v0, p0, Lcom/samsung/android/app/music/main/EventManagerTask$getEventPopup$2;->a:Lcom/samsung/android/app/music/main/EventManagerTask;

    iget-object v1, p0, Lcom/samsung/android/app/music/main/EventManagerTask$getEventPopup$2;->a:Lcom/samsung/android/app/music/main/EventManagerTask;

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/main/EventManagerTask;->b(Lcom/samsung/android/app/music/main/EventManagerTask;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/main/EventManagerTask;->a(Lcom/samsung/android/app/music/main/EventManagerTask;Ljava/util/ArrayList;)V

    .line 178
    iget-object p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask$getEventPopup$2;->a:Lcom/samsung/android/app/music/main/EventManagerTask;

    invoke-static {p1}, Lcom/samsung/android/app/music/main/EventManagerTask;->c(Lcom/samsung/android/app/music/main/EventManagerTask;)Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    const/4 v0, 0x0

    .line 526
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-gez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->b()V

    :cond_0
    check-cast v1, Lcom/samsung/android/app/music/model/milkevent/EventPopup;

    const-string v0, "EventManager"

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "popup -  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/app/music/main/EventManagerTask$getEventPopup$2;->a:Lcom/samsung/android/app/music/main/EventManagerTask;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/main/EventManagerTask;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/music/main/EventManagerTask$getEventPopup$2;->a:Lcom/samsung/android/app/music/main/EventManagerTask;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/app/music/main/EventManagerTask$getEventPopup$2;->a:Lcom/samsung/android/app/music/main/EventManagerTask;

    invoke-static {v3}, Lcom/samsung/android/app/music/main/EventManagerTask;->b(Lcom/samsung/android/app/music/main/EventManagerTask;)Lcom/samsung/android/app/music/main/MainActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/main/MainActivity;->getSelectedTabId()I

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/music/main/EventManagerTask;->a(Lcom/samsung/android/app/music/main/EventManagerTask;Ljava/lang/String;I)V

    move v0, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 60
    check-cast p1, Lcom/samsung/android/app/music/model/milkevent/EventPopupList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/main/EventManagerTask$getEventPopup$2;->a(Lcom/samsung/android/app/music/model/milkevent/EventPopupList;)V

    return-void
.end method
