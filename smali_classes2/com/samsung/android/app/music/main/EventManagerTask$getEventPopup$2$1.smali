.class final Lcom/samsung/android/app/music/main/EventManagerTask$getEventPopup$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/main/EventManagerTask$getEventPopup$2;->a(Lcom/samsung/android/app/music/model/milkevent/EventPopupList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/main/EventManagerTask$getEventPopup$2;

.field final synthetic b:Lcom/samsung/android/app/music/model/milkevent/EventPopupList;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/main/EventManagerTask$getEventPopup$2;Lcom/samsung/android/app/music/model/milkevent/EventPopupList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask$getEventPopup$2$1;->a:Lcom/samsung/android/app/music/main/EventManagerTask$getEventPopup$2;

    iput-object p2, p0, Lcom/samsung/android/app/music/main/EventManagerTask$getEventPopup$2$1;->b:Lcom/samsung/android/app/music/model/milkevent/EventPopupList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-string v0, "EventManager"

    const-string v1, "getEventPopup | Delete Expired Notices From DB"

    .line 172
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/music/main/EventManagerTask$getEventPopup$2$1;->a:Lcom/samsung/android/app/music/main/EventManagerTask$getEventPopup$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/main/EventManagerTask$getEventPopup$2;->a:Lcom/samsung/android/app/music/main/EventManagerTask;

    iget-object v1, p0, Lcom/samsung/android/app/music/main/EventManagerTask$getEventPopup$2$1;->b:Lcom/samsung/android/app/music/model/milkevent/EventPopupList;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/main/EventManagerTask;->a(Lcom/samsung/android/app/music/main/EventManagerTask;Lcom/samsung/android/app/music/model/milkevent/EventPopupList;)V

    return-void
.end method
