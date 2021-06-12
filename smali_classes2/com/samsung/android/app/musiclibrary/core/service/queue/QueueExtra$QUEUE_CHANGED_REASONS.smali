.class public Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueExtra$QUEUE_CHANGED_REASONS;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QUEUE_CHANGED_REASONS"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueExtra$QUEUE_CHANGED_REASONS$Def;
    }
.end annotation


# static fields
.field public static final ADD:I = 0x1

.field public static final META_UPDATED:I = 0x5

.field public static final NEW:I = 0x0

.field public static final NONE:I = -0x1

.field public static final REMOVE:I = 0x2

.field public static final REORDER:I = 0x3

.field public static final RESTORE:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
