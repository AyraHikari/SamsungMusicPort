.class public Lcom/samsung/android/app/music/support/android/content/pm/PackageManagerCompat;
.super Ljava/lang/Object;
.source "PackageManagerCompat.java"


# static fields
.field public static final FEATURE_COVER_SVIEW:Ljava/lang/String;

.field public static final FEATURE_FOLDER_TYPE:Ljava/lang/String;

.field public static final FEATURE_HOVERING_UI:Ljava/lang/String;

.field public static final MATCH_UNINSTALLED_PACKAGES:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const-string v0, "com.sec.feature.folder_type"

    .line 2
    sput-object v0, Lcom/samsung/android/app/music/support/android/content/pm/PackageManagerCompat;->FEATURE_FOLDER_TYPE:Ljava/lang/String;

    const-string v0, "com.sec.feature.hovering_ui"

    .line 3
    sput-object v0, Lcom/samsung/android/app/music/support/android/content/pm/PackageManagerCompat;->FEATURE_HOVERING_UI:Ljava/lang/String;

    const-string v0, "com.sec.feature.cover.sview"

    .line 4
    sput-object v0, Lcom/samsung/android/app/music/support/android/content/pm/PackageManagerCompat;->FEATURE_COVER_SVIEW:Ljava/lang/String;

    const/16 v0, 0x2000

    .line 5
    sput v0, Lcom/samsung/android/app/music/support/android/content/pm/PackageManagerCompat;->MATCH_UNINSTALLED_PACKAGES:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
