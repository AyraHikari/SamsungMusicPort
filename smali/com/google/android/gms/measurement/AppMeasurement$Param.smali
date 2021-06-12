.class public final Lcom/google/android/gms/measurement/AppMeasurement$Param;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/measurement/AppMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Param"
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 38

    const-string v0, "firebase_conversion"

    const-string v1, "engagement_time_msec"

    const-string v2, "exposure_time"

    const-string v3, "ad_event_id"

    const-string v4, "ad_unit_id"

    const-string v5, "firebase_error"

    const-string v6, "firebase_error_value"

    const-string v7, "firebase_error_length"

    const-string v8, "firebase_event_origin"

    const-string v9, "firebase_screen"

    const-string v10, "firebase_screen_class"

    const-string v11, "firebase_screen_id"

    const-string v12, "firebase_previous_screen"

    const-string v13, "firebase_previous_class"

    const-string v14, "firebase_previous_id"

    const-string v15, "message_device_time"

    const-string v16, "message_id"

    const-string v17, "message_name"

    const-string v18, "message_time"

    const-string v19, "previous_app_version"

    const-string v20, "previous_os_version"

    const-string v21, "topic"

    const-string v22, "update_with_analytics"

    const-string v23, "previous_first_open_count"

    const-string v24, "system_app"

    const-string v25, "system_app_update"

    const-string v26, "previous_install_count"

    const-string v27, "ga_event_id"

    const-string v28, "ga_extra_params_ct"

    const-string v29, "ga_group_name"

    const-string v30, "ga_list_length"

    const-string v31, "ga_index"

    const-string v32, "ga_event_name"

    const-string v33, "campaign_info_source"

    const-string v34, "deferred_analytics_collection"

    const-string v35, "session_number"

    const-string v36, "session_id"

    .line 3
    filled-new-array/range {v0 .. v36}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/AppMeasurement$Param;->a:[Ljava/lang/String;

    const-string v1, "_c"

    const-string v2, "_et"

    const-string v3, "_xt"

    const-string v4, "_aeid"

    const-string v5, "_ai"

    const-string v6, "_err"

    const-string v7, "_ev"

    const-string v8, "_el"

    const-string v9, "_o"

    const-string v10, "_sn"

    const-string v11, "_sc"

    const-string v12, "_si"

    const-string v13, "_pn"

    const-string v14, "_pc"

    const-string v15, "_pi"

    const-string v16, "_ndt"

    const-string v17, "_nmid"

    const-string v18, "_nmn"

    const-string v19, "_nmt"

    const-string v20, "_pv"

    const-string v21, "_po"

    const-string v22, "_nt"

    const-string v23, "_uwa"

    const-string v24, "_pfo"

    const-string v25, "_sys"

    const-string v26, "_sysu"

    const-string v27, "_pin"

    const-string v28, "_eid"

    const-string v29, "_epc"

    const-string v30, "_gn"

    const-string v31, "_ll"

    const-string v32, "_i"

    const-string v33, "_en"

    const-string v34, "_cis"

    const-string v35, "_dac"

    const-string v36, "_sno"

    const-string v37, "_sid"

    .line 4
    filled-new-array/range {v1 .. v37}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/AppMeasurement$Param;->b:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    sget-object v0, Lcom/google/android/gms/measurement/AppMeasurement$Param;->a:[Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/measurement/AppMeasurement$Param;->b:[Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
