.class public final Lcom/samsung/android/app/music/model/AdjustmentEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/model/AdjustmentEvent$EventType;
    }
.end annotation


# instance fields
.field private final eventDate:Ljava/lang/String;

.field private final eventType:Ljava/lang/String;

.field private final millisElapsed:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/samsung/android/app/music/model/AdjustmentEvent;->eventType:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/samsung/android/app/music/model/AdjustmentEvent;->eventDate:Ljava/lang/String;

    .line 13
    iput-wide p3, p0, Lcom/samsung/android/app/music/model/AdjustmentEvent;->millisElapsed:J

    return-void
.end method
