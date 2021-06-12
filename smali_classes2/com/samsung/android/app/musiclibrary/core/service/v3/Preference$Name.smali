.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/Preference$Name;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Name"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/Preference$Name;

.field public static final MUSIC_SERVICE:Ljava/lang/String; = "music_service_pref"

.field public static final TEST_MUSIC_SERVICE:Ljava/lang/String; = "test_music_service_pref"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/Preference$Name;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/Preference$Name;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/Preference$Name;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/Preference$Name;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
