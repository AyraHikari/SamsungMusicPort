.class final enum Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$1;
.super Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# instance fields
.field private final ALL_ITEMS:[Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$Item;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder;-><init>(Ljava/lang/String;ILcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$1;)V

    const/4 p1, 0x2

    .line 24
    new-array p1, p1, [Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$Item;

    new-instance p2, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$Item;

    const v0, 0x7f130094

    const v1, 0x7f0b0173

    const/4 v2, -0x1

    invoke-direct {p2, v0, v1, v2}, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$Item;-><init>(III)V

    const/4 v0, 0x0

    aput-object p2, p1, v0

    new-instance p2, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$Item;

    const v0, 0x7f13054e

    const v1, 0x7f0b015a

    const v2, 0x7f0b0159

    invoke-direct {p2, v0, v1, v2}, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$Item;-><init>(III)V

    const/4 v0, 0x1

    aput-object p2, p1, v0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$1;->ALL_ITEMS:[Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$Item;

    return-void
.end method


# virtual methods
.method public getItems()[Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$Item;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$1;->ALL_ITEMS:[Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$Item;

    return-object v0
.end method
