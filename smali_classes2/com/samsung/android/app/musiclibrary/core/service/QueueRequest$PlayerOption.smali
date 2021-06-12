.class public final Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$PlayerOption;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlayerOption"
.end annotation


# instance fields
.field public final play:Z

.field public final seekPosition:J


# direct methods
.method public constructor <init>(ZJ)V
    .locals 0

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$PlayerOption;->play:Z

    .line 311
    iput-wide p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$PlayerOption;->seekPosition:J

    return-void
.end method
