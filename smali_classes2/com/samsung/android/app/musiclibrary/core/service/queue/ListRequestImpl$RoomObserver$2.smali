.class Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/util/Pair<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;)V
    .locals 0

    .line 1336
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver$2;->this$1:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/util/Pair;Landroid/util/Pair;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1339
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1336
    check-cast p1, Landroid/util/Pair;

    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$RoomObserver$2;->compare(Landroid/util/Pair;Landroid/util/Pair;)I

    move-result p1

    return p1
.end method
