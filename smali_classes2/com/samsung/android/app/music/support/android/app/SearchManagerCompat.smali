.class public Lcom/samsung/android/app/music/support/android/app/SearchManagerCompat;
.super Ljava/lang/Object;
.source "SearchManagerCompat.java"


# static fields
.field public static final SUGGEST_COLUMN_GROUP:Ljava/lang/String;

.field public static final SUGGEST_COLUMN_TARGET_TYPE:Ljava/lang/String;

.field public static final SUGGEST_PARAMETER_END_TIME:Ljava/lang/String;

.field public static final SUGGEST_PARAMETER_START_TIME:Ljava/lang/String;

.field public static final SUGGEST_URI_PATH_REGEX_QUERY:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const-string v0, "search_suggest_regex_query"

    .line 2
    sput-object v0, Lcom/samsung/android/app/music/support/android/app/SearchManagerCompat;->SUGGEST_URI_PATH_REGEX_QUERY:Ljava/lang/String;

    const-string v0, "suggest_target_type"

    .line 3
    sput-object v0, Lcom/samsung/android/app/music/support/android/app/SearchManagerCompat;->SUGGEST_COLUMN_TARGET_TYPE:Ljava/lang/String;

    const-string v0, "suggest_group"

    .line 4
    sput-object v0, Lcom/samsung/android/app/music/support/android/app/SearchManagerCompat;->SUGGEST_COLUMN_GROUP:Ljava/lang/String;

    const-string v0, "stime"

    .line 5
    sput-object v0, Lcom/samsung/android/app/music/support/android/app/SearchManagerCompat;->SUGGEST_PARAMETER_START_TIME:Ljava/lang/String;

    const-string v0, "etime"

    .line 6
    sput-object v0, Lcom/samsung/android/app/music/support/android/app/SearchManagerCompat;->SUGGEST_PARAMETER_END_TIME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
