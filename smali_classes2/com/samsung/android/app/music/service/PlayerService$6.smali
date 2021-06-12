.class Lcom/samsung/android/app/music/service/PlayerService$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$OnDlnaControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/PlayerService;->a(Ljava/lang/String;[JILjava/lang/String;ZJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[J

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:J

.field final synthetic f:Lcom/samsung/android/app/music/service/PlayerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/PlayerService;Ljava/lang/String;[JILjava/lang/String;J)V
    .locals 0

    .line 1311
    iput-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$6;->f:Lcom/samsung/android/app/music/service/PlayerService;

    iput-object p2, p0, Lcom/samsung/android/app/music/service/PlayerService$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/music/service/PlayerService$6;->b:[J

    iput p4, p0, Lcom/samsung/android/app/music/service/PlayerService$6;->c:I

    iput-object p5, p0, Lcom/samsung/android/app/music/service/PlayerService$6;->d:Ljava/lang/String;

    iput-wide p6, p0, Lcom/samsung/android/app/music/service/PlayerService$6;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDlnaServiceBound()V
    .locals 7

    .line 1314
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$6;->f:Lcom/samsung/android/app/music/service/PlayerService;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService$6;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/PlayerService$6;->b:[J

    iget v3, p0, Lcom/samsung/android/app/music/service/PlayerService$6;->c:I

    iget-object v4, p0, Lcom/samsung/android/app/music/service/PlayerService$6;->d:Ljava/lang/String;

    iget-wide v5, p0, Lcom/samsung/android/app/music/service/PlayerService$6;->e:J

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/music/service/PlayerService;->a(Lcom/samsung/android/app/music/service/PlayerService;Ljava/lang/String;[JILjava/lang/String;J)V

    return-void
.end method
