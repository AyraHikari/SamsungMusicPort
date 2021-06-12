.class public Lcom/samsung/android/app/music/support/android/app/SearchManagerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SUGGEST_COLUMN_GROUP:Ljava/lang/String;

.field public static final SUGGEST_COLUMN_TARGET_TYPE:Ljava/lang/String;

.field public static final SUGGEST_PARAMETER_END_TIME:Ljava/lang/String;

.field public static final SUGGEST_PARAMETER_START_TIME:Ljava/lang/String;

.field public static final SUGGEST_URI_PATH_REGEX_QUERY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const-string v0, "search_suggest_regex_query"

    sput-object v0, Lcom/samsung/android/app/music/support/android/app/SearchManagerCompat;->SUGGEST_URI_PATH_REGEX_QUERY:Ljava/lang/String;

    .line 13
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const-string v0, "suggest_target_type"

    sput-object v0, Lcom/samsung/android/app/music/support/android/app/SearchManagerCompat;->SUGGEST_COLUMN_TARGET_TYPE:Ljava/lang/String;

    .line 17
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const-string v0, "suggest_group"

    sput-object v0, Lcom/samsung/android/app/music/support/android/app/SearchManagerCompat;->SUGGEST_COLUMN_GROUP:Ljava/lang/String;

    .line 21
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const-string v0, "stime"

    sput-object v0, Lcom/samsung/android/app/music/support/android/app/SearchManagerCompat;->SUGGEST_PARAMETER_START_TIME:Ljava/lang/String;

    .line 25
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const-string v0, "etime"

    sput-object v0, Lcom/samsung/android/app/music/support/android/app/SearchManagerCompat;->SUGGEST_PARAMETER_END_TIME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
