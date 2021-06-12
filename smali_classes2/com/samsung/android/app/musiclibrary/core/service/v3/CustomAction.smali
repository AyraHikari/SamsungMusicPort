.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/CustomAction;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/CustomAction;

.field public static final RELOAD_QUEUE:Ljava/lang/String; = "com.samsung.android.app.music.core.customAction.RELOAD_QUEUE"

.field public static final REQUEST_QUEUE:Ljava/lang/String; = "com.samsung.android.app.music.core.customAction.REQUEST_QUEUE"

.field private static final STATE_PREFIX:Ljava/lang/String; = "com.samsung.android.app.music.core.customAction"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/CustomAction;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/CustomAction;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/CustomAction;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/CustomAction;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
