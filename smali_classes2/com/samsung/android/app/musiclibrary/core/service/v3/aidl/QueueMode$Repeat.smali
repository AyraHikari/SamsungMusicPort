.class public interface abstract annotation Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$Repeat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Repeat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$Repeat$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final ALL:I = 0x2

.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$Repeat$Companion;

.field public static final OFF:I = 0x0

.field public static final ONE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$Repeat$Companion;->$$INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$Repeat$Companion;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$Repeat;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$Repeat$Companion;

    return-void
.end method
