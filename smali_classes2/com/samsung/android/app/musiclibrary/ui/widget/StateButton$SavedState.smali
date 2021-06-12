.class Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 230
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$SavedState$1;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$SavedState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 215
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$SavedState;->a:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;I)V
    .locals 0

    .line 210
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 211
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$SavedState;->a:I

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$SavedState;)I
    .locals 0

    .line 205
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$SavedState;->a:I

    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 226
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 227
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$SavedState;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
