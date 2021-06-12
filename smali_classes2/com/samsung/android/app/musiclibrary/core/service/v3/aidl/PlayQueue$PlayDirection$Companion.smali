.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue$PlayDirection$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue$PlayDirection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue$PlayDirection$Companion;

.field public static final NONE:I = 0x0

.field public static final OPEN_SPECIFIC_POSITION:I = 0x1

.field public static final TO_NEXT:I = 0x2

.field public static final TO_PREV:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue$PlayDirection$Companion;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue$PlayDirection$Companion;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue$PlayDirection$Companion;->$$INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue$PlayDirection$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString$musicLibrary_release(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p1, "Unknown"

    goto :goto_0

    :pswitch_0
    const-string p1, "TO_PREV"

    goto :goto_0

    :pswitch_1
    const-string p1, "TO_NEXT"

    goto :goto_0

    :pswitch_2
    const-string p1, "OPEN_SPECIFIC_POSITION"

    goto :goto_0

    :pswitch_3
    const-string p1, "NONE"

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
