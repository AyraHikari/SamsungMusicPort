.class Lcom/samsung/android/app/music/service/PlayerService$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$OnDlnaControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/PlayerService;->dlnaConnectionRequested(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/android/app/music/service/PlayerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/PlayerService;Ljava/lang/String;)V
    .locals 0

    .line 1399
    iput-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$7;->b:Lcom/samsung/android/app/music/service/PlayerService;

    iput-object p2, p0, Lcom/samsung/android/app/music/service/PlayerService$7;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDlnaServiceBound()V
    .locals 2

    .line 1402
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$7;->b:Lcom/samsung/android/app/music/service/PlayerService;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService$7;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/PlayerService;->a(Lcom/samsung/android/app/music/service/PlayerService;Ljava/lang/String;)V

    return-void
.end method
