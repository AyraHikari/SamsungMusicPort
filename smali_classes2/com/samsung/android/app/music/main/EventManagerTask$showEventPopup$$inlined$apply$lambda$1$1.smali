.class final Lcom/samsung/android/app/music/main/EventManagerTask$showEventPopup$$inlined$apply$lambda$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/main/EventManagerTask$showEventPopup$$inlined$apply$lambda$1;->a(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/main/EventManagerTask$showEventPopup$$inlined$apply$lambda$1;

.field final synthetic b:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/main/EventManagerTask$showEventPopup$$inlined$apply$lambda$1;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask$showEventPopup$$inlined$apply$lambda$1$1;->a:Lcom/samsung/android/app/music/main/EventManagerTask$showEventPopup$$inlined$apply$lambda$1;

    iput-object p2, p0, Lcom/samsung/android/app/music/main/EventManagerTask$showEventPopup$$inlined$apply$lambda$1$1;->b:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-string v0, "EventManager"

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EventPopupDialog dismissed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/main/EventManagerTask$showEventPopup$$inlined$apply$lambda$1$1;->b:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/samsung/android/app/music/main/EventManagerTask$showEventPopup$$inlined$apply$lambda$1$1;->b:Ljava/lang/Boolean;

    const-string v1, "isDoNotShow"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/samsung/android/app/music/main/EventManagerTask$showEventPopup$$inlined$apply$lambda$1$1;->a:Lcom/samsung/android/app/music/main/EventManagerTask$showEventPopup$$inlined$apply$lambda$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/main/EventManagerTask$showEventPopup$$inlined$apply$lambda$1;->b:Lcom/samsung/android/app/music/model/milkevent/EventPopup;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->setDoNotShowTime(J)V

    .line 337
    iget-object v0, p0, Lcom/samsung/android/app/music/main/EventManagerTask$showEventPopup$$inlined$apply$lambda$1$1;->a:Lcom/samsung/android/app/music/main/EventManagerTask$showEventPopup$$inlined$apply$lambda$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/main/EventManagerTask$showEventPopup$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/main/EventManagerTask;

    iget-object v1, p0, Lcom/samsung/android/app/music/main/EventManagerTask$showEventPopup$$inlined$apply$lambda$1$1;->a:Lcom/samsung/android/app/music/main/EventManagerTask$showEventPopup$$inlined$apply$lambda$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/main/EventManagerTask$showEventPopup$$inlined$apply$lambda$1;->b:Lcom/samsung/android/app/music/model/milkevent/EventPopup;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/main/EventManagerTask;->a(Lcom/samsung/android/app/music/main/EventManagerTask;Lcom/samsung/android/app/music/model/milkevent/EventPopup;)V

    :cond_0
    return-void
.end method
