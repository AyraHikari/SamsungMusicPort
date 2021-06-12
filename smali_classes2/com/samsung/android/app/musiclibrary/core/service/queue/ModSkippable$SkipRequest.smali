.class final Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SkipRequest"
.end annotation


# instance fields
.field final direction:I

.field final isMyMusicMode:Z


# direct methods
.method constructor <init>(ZI)V
    .locals 0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipRequest;->isMyMusicMode:Z

    .line 228
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ModSkippable$SkipRequest;->direction:I

    return-void
.end method
