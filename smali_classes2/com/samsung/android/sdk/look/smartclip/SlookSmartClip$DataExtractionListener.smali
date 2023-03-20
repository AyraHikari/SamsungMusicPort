.class public interface abstract Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip$DataExtractionListener;
.super Ljava/lang/Object;
.source "SlookSmartClip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataExtractionListener"
.end annotation


# static fields
.field public static final EXTRACTION_DEFAULT:I = 0x1

.field public static final EXTRACTION_DISCARD:I


# virtual methods
.method public abstract onExtractSmartClipData(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I
.end method
