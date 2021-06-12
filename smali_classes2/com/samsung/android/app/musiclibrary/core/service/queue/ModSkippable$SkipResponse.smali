.class final Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SkipResponse"
.end annotation


# instance fields
.field final playPos:I

.field final result:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipResponse;->playPos:I

    .line 240
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipResponse;->result:I

    return-void
.end method
