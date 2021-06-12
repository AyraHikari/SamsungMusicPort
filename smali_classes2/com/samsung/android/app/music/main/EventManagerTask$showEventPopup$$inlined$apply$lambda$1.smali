.class final Lcom/samsung/android/app/music/main/EventManagerTask$showEventPopup$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/event/EventPopupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/main/EventManagerTask;->a(Lcom/samsung/android/app/music/model/milkevent/EventPopup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/main/EventManagerTask;

.field final synthetic b:Lcom/samsung/android/app/music/model/milkevent/EventPopup;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/main/EventManagerTask;Lcom/samsung/android/app/music/model/milkevent/EventPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask$showEventPopup$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/main/EventManagerTask;

    iput-object p2, p0, Lcom/samsung/android/app/music/main/EventManagerTask$showEventPopup$$inlined$apply$lambda$1;->b:Lcom/samsung/android/app/music/model/milkevent/EventPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Boolean;)V
    .locals 2

    .line 333
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/app/music/main/EventManagerTask$showEventPopup$$inlined$apply$lambda$1$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/main/EventManagerTask$showEventPopup$$inlined$apply$lambda$1$1;-><init>(Lcom/samsung/android/app/music/main/EventManagerTask$showEventPopup$$inlined$apply$lambda$1;Ljava/lang/Boolean;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 339
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
