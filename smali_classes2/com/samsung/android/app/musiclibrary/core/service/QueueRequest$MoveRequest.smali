.class public final Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MoveRequest"
.end annotation


# instance fields
.field public final position:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveRequest;->position:I

    return-void
.end method
