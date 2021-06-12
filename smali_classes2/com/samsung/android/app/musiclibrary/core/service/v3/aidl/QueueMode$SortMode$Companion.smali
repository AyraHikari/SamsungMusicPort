.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$SortMode$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$SortMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$SortMode$Companion;

.field public static final ARTIST:I = 0x4

.field public static final DEFAULT:I = 0x1

.field public static final DEVICE:I = 0x5

.field public static final MINE:I = 0x1

.field public static final RECENTLY:I = 0x2

.field public static final TITLE:I = 0x3

.field public static final UNDEFINED:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$SortMode$Companion;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$SortMode$Companion;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$SortMode$Companion;->$$INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$SortMode$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
