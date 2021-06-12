.class public final Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$RequestSort;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestSort"
.end annotation


# instance fields
.field final addedOrderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final baseUri:Landroid/net/Uri;

.field final playList:[J

.field final position:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;[JLjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "[J",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$RequestSort;->baseUri:Landroid/net/Uri;

    .line 261
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$RequestSort;->playList:[J

    .line 262
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$RequestSort;->addedOrderList:Ljava/util/List;

    .line 263
    iput p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/sort/OrderController$RequestSort;->position:I

    return-void
.end method
