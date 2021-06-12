.class public Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$PlayMode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayMode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$PlayMode$Action;
    }
.end annotation


# static fields
.field public static final FORCE_ORDER:I = 0x2

.field public static final FORCE_SHUFFLE:I = 0x1

.field public static final NONE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
