.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/Preference$Key$PlayerQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/Preference$Key;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlayerQueue"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/Preference$Key$PlayerQueue;

.field public static final QEUEU_TYPE:Ljava/lang/String; = "queue_type"

.field public static final QUEUE:Ljava/lang/String; = "queue"

.field public static final QUEUE_POSITION:Ljava/lang/String; = "queue_position"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/Preference$Key$PlayerQueue;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/Preference$Key$PlayerQueue;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/Preference$Key$PlayerQueue;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/Preference$Key$PlayerQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
