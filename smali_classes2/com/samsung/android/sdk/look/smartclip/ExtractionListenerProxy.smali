.class Lcom/samsung/android/sdk/look/smartclip/ExtractionListenerProxy;
.super Ljava/lang/Object;
.source "SlookSmartClip.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDataExtractionListener:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip$DataExtractionListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/look/smartclip/ExtractionListenerProxy;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip$DataExtractionListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/sdk/look/smartclip/ExtractionListenerProxy;->mDataExtractionListener:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip$DataExtractionListener;

    return-void
.end method

.method public static newInstance(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip$DataExtractionListener;)Ljava/lang/Object;
    .locals 4

    :try_start_0
    const-string v0, "com.samsung.android.smartclip.SmartClipDataExtractionListener"

    .line 1
    invoke-static {v0}, Lcom/samsung/android/sdk/look/smartclip/ReflectionUtils;->getClassByName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    sget-object v1, Lcom/samsung/android/sdk/look/smartclip/ExtractionListenerProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "newInstance : e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 5
    new-instance v0, Lcom/samsung/android/sdk/look/smartclip/ExtractionListenerProxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/look/smartclip/ExtractionListenerProxy;-><init>(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip$DataExtractionListener;)V

    .line 6
    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onExtractSmartClipData"

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/samsung/android/sdk/look/smartclip/ExtractionListenerProxy;->mDataExtractionListener:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip$DataExtractionListener;

    const/4 p2, 0x0

    aget-object p2, p3, p2

    check-cast p2, Landroid/view/View;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    check-cast v0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

    const/4 v1, 0x2

    aget-object p3, p3, v1

    check-cast p3, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;

    invoke-interface {p1, p2, v0, p3}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip$DataExtractionListener;->onExtractSmartClipData(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
