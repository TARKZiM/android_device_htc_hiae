/*
 * Copyright (C) 2016 The CyanogenMod Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
#include <gui/BufferQueue.h>
#include <gui/SurfaceComposerClient.h>
#include <gui/ISurfaceComposer.h>
#include <utils/Errors.h>
#include <utils/String8.h>
#include <utils/StrongPointer.h>

#include <private/gui/ComposerService.h>

#include <string>

using android::sp;
using android::status_t;
using android::IBinder;
using android::IGraphicBufferConsumer;
using android::IGraphicBufferProducer;
using android::PixelFormat;
using android::SurfaceControl;
using android::SurfaceComposerClient;

// GraphicBuffer(uint32_t inWidth, uint32_t inHeight, PixelFormat inFormat,
//               uint32_t inUsage, std::string requestorName = "<Unknown>");
extern "C" void _ZN7android13GraphicBufferC1EjjijNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(
    uint32_t inWidth, uint32_t inHeight, int inFormat, uint32_t inUsage,
    std::string requestorName);

extern "C" void _ZN7android13GraphicBufferC1Ejjij(
    uint32_t inWidth, uint32_t inHeight, int inFormat, uint32_t inUsage) {
  std::string requestorName = "<Unknown>";
  _ZN7android13GraphicBufferC1EjjijNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(
      inWidth, inHeight, inFormat, inUsage, requestorName);
}

// android::Fence::~Fence()
extern "C" void _ZN7android5FenceD1Ev() {
  // no-op, the explicit destructor was replaced with = default;
}

//android::GraphicBuffer::lock(uint32_t inUsage, void** vaddr, int32_t* outBytesPerPixel,
//                             int32_t* outBytesPerStride);
extern "C" status_t _ZN7android13GraphicBuffer4lockEjPPvPiS3_(uint32_t inUsage, void** vaddr, int32_t* outBytesPerPixel,
                             int32_t* outBytesPerStride);

//status_t GraphicBuffer::lock(uint32_t inUsage, void** vaddr)
extern "C" status_t _ZN7android13GraphicBuffer4lockEjPPv(uint32_t inUsage, void** vaddr){
  return _ZN7android13GraphicBuffer4lockEjPPvPiS3_(inUsage, vaddr, nullptr, nullptr);
}
