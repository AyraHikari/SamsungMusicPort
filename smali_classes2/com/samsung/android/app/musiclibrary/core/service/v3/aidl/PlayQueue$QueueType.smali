.class public interface abstract annotation Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue$QueueType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "QueueType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue$QueueType$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue$QueueType$Companion;

.field public static final PLAYER:I = 0x0

.field public static final RADIO:I = 0x1

.field public static final SPOTIFY:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue$QueueType$Companion;->$$INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue$QueueType$Companion;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue$QueueType;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue$QueueType$Companion;

    return-void
.end method
