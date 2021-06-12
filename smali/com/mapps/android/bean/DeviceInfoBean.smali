.class public Lcom/mapps/android/bean/DeviceInfoBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapps/android/share/AdInfoKey;
.implements Lcom/mapps/android/share/InterBannerKey;


# instance fields
.field public a_sspid:Ljava/lang/String;

.field public d_adid:Ljava/lang/String;

.field public d_app_id:Ljava/lang/String;

.field public d_app_name:Ljava/lang/String;

.field public d_app_ver:Ljava/lang/String;

.field public d_carrier:Ljava/lang/String;

.field public d_densty:I

.field public d_geo_city:Ljava/lang/String;

.field public d_geo_country:Ljava/lang/String;

.field public d_geo_lat:Ljava/lang/String;

.field public d_geo_lon:Ljava/lang/String;

.field public d_geo_region:Ljava/lang/String;

.field public d_geo_zip:Ljava/lang/String;

.field public d_h:Ljava/lang/String;

.field public d_language:Ljava/lang/String;

.field public d_maker:Ljava/lang/String;

.field public d_mcc:Ljava/lang/String;

.field public d_mnc:Ljava/lang/String;

.field public d_model:Ljava/lang/String;

.field public d_network:Ljava/lang/String;

.field public d_network_index:Ljava/lang/String;

.field public d_orientation:Ljava/lang/String;

.field public d_os:Ljava/lang/String;

.field public d_osv:Ljava/lang/String;

.field public d_screen:Ljava/lang/String;

.field public d_sdk_v:Ljava/lang/String;

.field public d_w:Ljava/lang/String;

.field public device_network:Ljava/lang/String;

.field public format:[Ljava/lang/String;

.field public i_banner_h:Ljava/lang/String;

.field public i_banner_w:Ljava/lang/String;

.field public i_product:Ljava/lang/String;

.field public i_product_attr:Ljava/lang/String;

.field public i_product_type:Ljava/lang/String;

.field public i_request_id:Ljava/lang/String;

.field public i_video_category:Ljava/lang/String;

.field public i_video_delivery:Ljava/lang/String;

.field public i_video_h:Ljava/lang/String;

.field public i_video_maxbitrate:Ljava/lang/String;

.field public i_video_maxduration:Ljava/lang/String;

.field public i_video_mims:Ljava/lang/String;

.field public i_video_minbitrate:Ljava/lang/String;

.field public i_video_minduration:Ljava/lang/String;

.field public i_video_startdelay:Ljava/lang/String;

.field public i_video_w:Ljava/lang/String;

.field private params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public u_age:Ljava/lang/String;

.field public u_gender:Ljava/lang/String;

.field public u_gps_flag:Ljava/lang/String;

.field public videoformat:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "json"

    const-string v1, "xml"

    const-string v2, "html"

    const-string v3, "js"

    .line 31
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->format:[Ljava/lang/String;

    const-string v0, "video/mp4"

    const-string v1, "video/x-ms-wmv"

    const-string v2, "video/x-flv"

    .line 32
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->videoformat:[Ljava/lang/String;

    const-string v0, ""

    .line 33
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_app_name:Ljava/lang/String;

    const-string v0, ""

    .line 34
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_app_ver:Ljava/lang/String;

    const-string v0, ""

    .line 35
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_app_id:Ljava/lang/String;

    const-string v0, ""

    .line 36
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->a_sspid:Ljava/lang/String;

    const-string v0, ""

    .line 37
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_request_id:Ljava/lang/String;

    const-string v0, ""

    .line 38
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_product_type:Ljava/lang/String;

    const-string v0, ""

    .line 39
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_product_attr:Ljava/lang/String;

    const-string v0, ""

    .line 40
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_product:Ljava/lang/String;

    const-string v0, ""

    .line 41
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_banner_w:Ljava/lang/String;

    const-string v0, ""

    .line 42
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_banner_h:Ljava/lang/String;

    const-string v0, ""

    .line 43
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_mims:Ljava/lang/String;

    const-string v0, ""

    .line 44
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_maxduration:Ljava/lang/String;

    const-string v0, ""

    .line 45
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_minduration:Ljava/lang/String;

    const-string v0, ""

    .line 46
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_w:Ljava/lang/String;

    const-string v0, ""

    .line 47
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_h:Ljava/lang/String;

    const-string v0, ""

    .line 48
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_startdelay:Ljava/lang/String;

    const-string v0, ""

    .line 49
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_maxbitrate:Ljava/lang/String;

    const-string v0, ""

    .line 50
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_minbitrate:Ljava/lang/String;

    const-string v0, ""

    .line 51
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_delivery:Ljava/lang/String;

    const-string v0, ""

    .line 52
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_category:Ljava/lang/String;

    const-string v0, ""

    .line 53
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_adid:Ljava/lang/String;

    const-string v0, ""

    .line 54
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_geo_country:Ljava/lang/String;

    const-string v0, ""

    .line 55
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_geo_city:Ljava/lang/String;

    const-string v0, ""

    .line 56
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_geo_region:Ljava/lang/String;

    const-string v0, ""

    .line 57
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_geo_zip:Ljava/lang/String;

    const-string v0, ""

    .line 58
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_geo_lat:Ljava/lang/String;

    const-string v0, ""

    .line 59
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_geo_lon:Ljava/lang/String;

    const-string v0, ""

    .line 60
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->u_gps_flag:Ljava/lang/String;

    const-string v0, ""

    .line 61
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_screen:Ljava/lang/String;

    const-string v0, ""

    .line 62
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_maker:Ljava/lang/String;

    const-string v0, ""

    .line 63
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_model:Ljava/lang/String;

    const-string v0, ""

    .line 64
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_network:Ljava/lang/String;

    const-string v0, ""

    .line 65
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_network_index:Ljava/lang/String;

    const-string v0, ""

    .line 66
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->device_network:Ljava/lang/String;

    const-string v0, ""

    .line 67
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_carrier:Ljava/lang/String;

    const-string v0, "Android"

    .line 68
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_os:Ljava/lang/String;

    const-string v0, ""

    .line 69
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_osv:Ljava/lang/String;

    const-string v0, ""

    .line 70
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_w:Ljava/lang/String;

    const-string v0, ""

    .line 71
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_h:Ljava/lang/String;

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_densty:I

    const-string v0, ""

    .line 73
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_orientation:Ljava/lang/String;

    const-string v0, ""

    .line 74
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_language:Ljava/lang/String;

    const-string v0, "1"

    .line 75
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_sdk_v:Ljava/lang/String;

    const-string v0, ""

    .line 76
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_mcc:Ljava/lang/String;

    const-string v0, ""

    .line 77
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_mnc:Ljava/lang/String;

    const-string v0, ""

    .line 78
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->u_age:Ljava/lang/String;

    const-string v0, ""

    .line 79
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->u_gender:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->params:Ljava/util/List;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->params:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private makeDeviceParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 235
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "&d_app_name="

    .line 236
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_app_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&d_app_id="

    .line 237
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_app_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&d_app_ver="

    .line 238
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_app_ver:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "4"

    .line 239
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "&i_video_w="

    .line 240
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_w:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "&i_video_h="

    .line 241
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string p2, "&d_screen="

    .line 243
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_screen:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "&d_maker="

    .line 244
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_maker:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "&d_model="

    .line 245
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_model:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "&d_network_index="

    .line 246
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_network_index:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "&d_network="

    .line 247
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_network:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "&d_carrier="

    .line 248
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_carrier:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "&d_os="

    .line 249
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_os:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "&d_osv="

    .line 250
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_osv:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "&d_w="

    .line 251
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_w:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "&d_h="

    .line 252
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "&d_densty="

    .line 253
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p2, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_densty:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p2, "&d_orientation="

    .line 254
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_orientation:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "&d_language="

    .line 255
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_language:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "&d_mcc="

    .line 256
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_mcc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "&d_mnc="

    .line 257
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_mnc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "&d_sdk_v="

    .line 258
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "105"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "&d_used_type=and_sdk"

    .line 259
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "&u_gps_flag="

    .line 260
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lcom/mapps/android/bean/DeviceInfoBean;->u_gps_flag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 282
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v3, 0x2000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, v0

    .line 286
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mapps/android/bean/DeviceInfoBean;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCarrier(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "phone"

    .line 309
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_0

    .line 311
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 312
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, " "

    const-string v1, ""

    .line 313
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 314
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public getDeviceParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 94
    iget-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_app_name:Ljava/lang/String;

    invoke-static {v0}, Lcom/mz/common/MZUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0, p1}, Lcom/mapps/android/bean/DeviceInfoBean;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_app_name:Ljava/lang/String;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_app_ver:Ljava/lang/String;

    invoke-static {v0}, Lcom/mz/common/MZUtils;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p0, p1, v1}, Lcom/mapps/android/bean/DeviceInfoBean;->getPackageType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_app_ver:Ljava/lang/String;

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_app_id:Ljava/lang/String;

    invoke-static {v0}, Lcom/mz/common/MZUtils;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 101
    invoke-virtual {p0, p1, v2}, Lcom/mapps/android/bean/DeviceInfoBean;->getPackageType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_app_id:Ljava/lang/String;

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->a_sspid:Ljava/lang/String;

    invoke-static {v0}, Lcom/mz/common/MZUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    .line 104
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->a_sspid:Ljava/lang/String;

    .line 106
    :cond_3
    iget-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_product_type:Ljava/lang/String;

    invoke-static {v0}, Lcom/mz/common/MZUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "4"

    .line 107
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "2"

    .line 108
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_product_type:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, "1"

    .line 110
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_product_type:Ljava/lang/String;

    .line 113
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_product_attr:Ljava/lang/String;

    invoke-static {v0}, Lcom/mz/common/MZUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 114
    iput-object p2, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_product_attr:Ljava/lang/String;

    .line 116
    :cond_6
    iget-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_product:Ljava/lang/String;

    invoke-static {v0}, Lcom/mz/common/MZUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 117
    iget-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->videoformat:[Ljava/lang/String;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_product:Ljava/lang/String;

    .line 119
    :cond_7
    iget-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_mims:Ljava/lang/String;

    invoke-static {v0}, Lcom/mz/common/MZUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, ""

    .line 120
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_mims:Ljava/lang/String;

    .line 122
    :cond_8
    iget-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_maxduration:Ljava/lang/String;

    invoke-static {v0}, Lcom/mz/common/MZUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, ""

    .line 123
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_maxduration:Ljava/lang/String;

    .line 126
    :cond_9
    iget-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_minduration:Ljava/lang/String;

    invoke-static {v0}, Lcom/mz/common/MZUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, ""

    .line 127
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_minduration:Ljava/lang/String;

    .line 130
    :cond_a
    iget-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_w:Ljava/lang/String;

    invoke-static {v0}, Lcom/mz/common/MZUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_h:Ljava/lang/String;

    invoke-static {v0}, Lcom/mz/common/MZUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    const-string v0, "window"

    .line 131
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 133
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 134
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 135
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_w:Ljava/lang/String;

    .line 136
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_h:Ljava/lang/String;

    .line 137
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_w:Ljava/lang/String;

    .line 138
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_h:Ljava/lang/String;

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "i_video_w : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_w:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mz/common/MzLog;->a(Ljava/lang/String;)V

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "i_video_h : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mz/common/MzLog;->a(Ljava/lang/String;)V

    .line 144
    :cond_c
    iget-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_startdelay:Ljava/lang/String;

    invoke-static {v0}, Lcom/mz/common/MZUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, ""

    .line 145
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_startdelay:Ljava/lang/String;

    .line 148
    :cond_d
    iget-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_maxbitrate:Ljava/lang/String;

    invoke-static {v0}, Lcom/mz/common/MZUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, ""

    .line 149
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_maxbitrate:Ljava/lang/String;

    .line 152
    :cond_e
    iget-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_minbitrate:Ljava/lang/String;

    invoke-static {v0}, Lcom/mz/common/MZUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, ""

    .line 153
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->i_video_minbitrate:Ljava/lang/String;

    .line 156
    :cond_f
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapps/android/share/ShareUtil;->getIsGPS(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    .line 157
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 158
    iget-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_geo_zip:Ljava/lang/String;

    invoke-static {v0}, Lcom/mz/common/MZUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 159
    sget-object v0, Lcom/mz/common/TraceGPS;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_geo_zip:Ljava/lang/String;

    .line 161
    :cond_10
    iget-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_geo_lat:Ljava/lang/String;

    invoke-static {v0}, Lcom/mz/common/MZUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 162
    sget-object v0, Lcom/mz/common/TraceGPS;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_geo_lat:Ljava/lang/String;

    .line 164
    :cond_11
    iget-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_geo_lon:Ljava/lang/String;

    invoke-static {v0}, Lcom/mz/common/MZUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 165
    sget-object v0, Lcom/mz/common/TraceGPS;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_geo_lon:Ljava/lang/String;

    :cond_12
    const-string v0, "1"

    .line 167
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->u_gps_flag:Ljava/lang/String;

    goto :goto_1

    :cond_13
    const-string v0, "0"

    .line 169
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->u_gps_flag:Ljava/lang/String;

    .line 171
    :goto_1
    iget-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_screen:Ljava/lang/String;

    invoke-static {v0}, Lcom/mz/common/MZUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "1"

    .line 172
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_screen:Ljava/lang/String;

    .line 174
    :cond_14
    iget-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_maker:Ljava/lang/String;

    invoke-static {v0}, Lcom/mz/common/MZUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 175
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, " "

    const-string v4, ""

    .line 176
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_maker:Ljava/lang/String;

    .line 179
    :cond_15
    iget-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_model:Ljava/lang/String;

    invoke-static {v0}, Lcom/mz/common/MZUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 180
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, " "

    const-string v4, ""

    .line 181
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_model:Ljava/lang/String;

    :cond_16
    const-string v0, "connectivity"

    .line 192
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1a

    .line 194
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 195
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_17

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_18

    :cond_17
    const-string v3, "2"

    .line 196
    iput-object v3, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_network_index:Ljava/lang/String;

    .line 197
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_network:Ljava/lang/String;

    .line 200
    :cond_18
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 201
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_19

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_1a

    .line 202
    :cond_19
    invoke-virtual {p0, p1}, Lcom/mapps/android/bean/DeviceInfoBean;->getNetworkClass(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_network_index:Ljava/lang/String;

    .line 203
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_network:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    .line 208
    :cond_1a
    :goto_2
    iget-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_carrier:Ljava/lang/String;

    invoke-static {v0}, Lcom/mz/common/MZUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 209
    invoke-virtual {p0, p1}, Lcom/mapps/android/bean/DeviceInfoBean;->getCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_carrier:Ljava/lang/String;

    .line 211
    :cond_1b
    iget-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_language:Ljava/lang/String;

    invoke-static {v0}, Lcom/mz/common/MZUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 212
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 213
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_language:Ljava/lang/String;

    .line 215
    :cond_1c
    iget-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_osv:Ljava/lang/String;

    invoke-static {v0}, Lcom/mz/common/MZUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 216
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_osv:Ljava/lang/String;

    .line 218
    :cond_1d
    iget-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_mcc:Ljava/lang/String;

    invoke-static {v0}, Lcom/mz/common/MZUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 219
    invoke-virtual {p0, p1, v1}, Lcom/mapps/android/bean/DeviceInfoBean;->getTeleInfo(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_mcc:Ljava/lang/String;

    .line 221
    :cond_1e
    iget-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_mnc:Ljava/lang/String;

    invoke-static {v0}, Lcom/mz/common/MZUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 222
    invoke-virtual {p0, p1, v2}, Lcom/mapps/android/bean/DeviceInfoBean;->getTeleInfo(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_mnc:Ljava/lang/String;

    .line 224
    :cond_1f
    iget v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_densty:I

    if-nez v0, :cond_20

    .line 226
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_densty:I

    .line 229
    :cond_20
    invoke-virtual {p0, p1}, Lcom/mapps/android/bean/DeviceInfoBean;->getOrientations(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapps/android/bean/DeviceInfoBean;->d_orientation:Ljava/lang/String;

    .line 231
    invoke-direct {p0, p1, p2}, Lcom/mapps/android/bean/DeviceInfoBean;->makeDeviceParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 324
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, ""

    return-object p1
.end method

.method public getNetworkClass(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "phone"

    .line 333
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 334
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0xb

    if-eq p1, v0, :cond_2

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    const-string p1, "0"

    return-object p1

    :cond_0
    const-string p1, "5"

    return-object p1

    :cond_1
    const-string p1, "6"

    return-object p1

    :cond_2
    const-string p1, "4"

    return-object p1

    :catch_0
    const-string p1, "0"

    return-object p1
.end method

.method public getOrientations(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "window"

    .line 353
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 354
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 355
    invoke-virtual {p1}, Landroid/view/Display;->getOrientation()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    const-string p1, "1"

    return-object p1

    :pswitch_0
    const-string p1, "2"

    return-object p1

    :pswitch_1
    const-string p1, "1"

    return-object p1

    :pswitch_2
    const-string p1, "2"

    return-object p1

    :pswitch_3
    const-string p1, "1"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPackageType(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 297
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 299
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 302
    :goto_0
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string p1, ""

    return-object p1
.end method

.method public getResponseFormat(I)Ljava/lang/String;
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "i_response_format="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mapps/android/bean/DeviceInfoBean;->format:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTeleInfo(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "phone"

    .line 372
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 373
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 375
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    const/4 p2, 0x5

    .line 377
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public getUUIDKey()Ljava/lang/String;
    .locals 1

    .line 290
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    iget-object v1, p0, Lcom/mapps/android/bean/DeviceInfoBean;->params:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 273
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 269
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 270
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
