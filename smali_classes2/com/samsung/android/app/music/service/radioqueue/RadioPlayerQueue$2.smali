.class Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$OnTypeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->setQueueChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$2;->a:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$2;->a:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->k(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;)V

    return-void
.end method
