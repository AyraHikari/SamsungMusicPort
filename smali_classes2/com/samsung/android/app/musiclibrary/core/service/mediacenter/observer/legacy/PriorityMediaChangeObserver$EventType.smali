.class public Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/PriorityMediaChangeObserver$EventType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/PriorityMediaChangeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/PriorityMediaChangeObserver$EventType$Def;
    }
.end annotation


# static fields
.field public static final EXTRA_CHANGED:I = 0x3

.field public static final META_CHANGED:I = 0x0

.field public static final PLAYBACK_STATE_CHANGED:I = 0x1

.field public static final QUEUE_CHANGED:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
