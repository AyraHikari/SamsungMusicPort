.class public Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$LocalPlayHistory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalPlayHistory"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "history"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord;",
            ">;)V"
        }
    .end annotation

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$LocalPlayHistory;->a:Ljava/util/List;

    return-void
.end method
