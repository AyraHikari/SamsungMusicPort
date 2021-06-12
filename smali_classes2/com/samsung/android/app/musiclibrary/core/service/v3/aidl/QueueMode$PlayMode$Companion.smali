.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$PlayMode$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$PlayMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$PlayMode$Companion;

.field public static final FORCE_ORDER:I = 0x2

.field public static final FORCE_SHUFFLE:I = 0x1

.field public static final NONE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$PlayMode$Companion;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$PlayMode$Companion;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$PlayMode$Companion;->$$INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$PlayMode$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
