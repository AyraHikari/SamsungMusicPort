.class public Lcom/mapps/android/view/AdVideoPlayer$MyPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/view/AdVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdVideoPlayer;


# direct methods
.method public constructor <init>(Lcom/mapps/android/view/AdVideoPlayer;)V
    .locals 0

    .line 515
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$MyPhoneStateListener;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 519
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$MyPhoneStateListener;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    const/4 p2, 0x4

    iput p2, p1, Lcom/mapps/android/view/AdVideoPlayer;->m_nResonCode:I

    :cond_0
    return-void
.end method
